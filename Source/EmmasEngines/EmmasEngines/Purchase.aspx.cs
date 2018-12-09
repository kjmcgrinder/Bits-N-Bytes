﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmmasEnginesLibrary;
using EmmasEnginesLibrary.PurchaseDataSetTableAdapters;


namespace EmmasEngines
{
    public partial class Purchase : System.Web.UI.Page
    {
        PageMode Mode;        
        static PurchaseDataSet dsReceipt = new PurchaseDataSet();
        static PurchaseDataSet.productDataTable productTable;
        DataTable selectedProducts
        {
            get { return (DataTable)ViewState["Products"]; }
            set { ViewState["Products"] = value; }
        }        

        static Purchase()
        {
            
            receiptTableAdapter daReceipt = new receiptTableAdapter();
            daReceipt.Fill(dsReceipt.receipt);
            employeeTableAdapter daEmployee = new employeeTableAdapter();
            daEmployee.Fill(dsReceipt.employee);
            productTableAdapter daProducts = new productTableAdapter();
            productTable = daProducts.GetData();
        }        

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!User.IsInRole("Sales") && !User.IsInRole("Manager"))
                Response.Redirect("~/Default.aspx");
            if (!IsPostBack)
            {
                if (Request.QueryString["mode"] == "sale")
                    Mode = PageMode.Sale;
                else if (Request.QueryString["mode"] == "repair")
                    Mode = PageMode.Repair;
                else
                    Response.Redirect("~/Default.aspx");
                UpdateMode();
            }                
        }

        protected void UpdateMode()
        {
            if(Mode == PageMode.Repair)
            {
                pnlPurchase.Visible = false;
                pnlRepair.Visible = true;
            }
            else if(Mode == PageMode.Sale)
            {
                pnlRepair.Visible = false;
                pnlPurchase.Visible = true;                
            }
        }

        protected void rdoSale_CheckedChanged(object sender, EventArgs e)
        {
            Mode = PageMode.Sale;
            UpdateMode();
        }

        protected void rdoRepair_CheckedChanged(object sender, EventArgs e)
        {            
            Mode = PageMode.Repair;
            UpdateMode();
        }

        protected void lbxSelectProduct_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(selectedProducts == null)
            {
                selectedProducts = new DataTable();
                selectedProducts.Columns.Add(new DataColumn("id", typeof(int)));                
                selectedProducts.Columns.Add(new DataColumn("Product Name", typeof(string)));
                selectedProducts.Columns.Add(new DataColumn("Price", typeof(float)));
                selectedProducts.Columns.Add(new DataColumn("Stock", typeof(int)));
            }
            DataRow[] rows = productTable.Select("id = " + lbxSelectProduct.SelectedValue);
            DataRow newProduct = selectedProducts.NewRow();                        
            newProduct["Product Name"] = rows[0]["prodBrName"];
            newProduct["id"] = rows[0]["id"];
            newProduct["Price"] = rows[0]["invPrice"];
            newProduct["Stock"] = rows[0]["invQuantity"];
            selectedProducts.Rows.Add(newProduct);
            gvSelectedProductsSales.DataSource = selectedProducts;
            gvSelectedProductsSales.DataBind();            
            for (int i = 0; i < gvSelectedProductsSales.Rows.Count; i++)
                ((TextBox)gvSelectedProductsSales.Rows[i].Cells[0].FindControl("TextBox1")).Text = Request.Form["ctl00$MainContent$gvSelectedProductsSales$ctl0" + (i + 2).ToString() + "$TextBox1"] ?? "0";
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if(Mode == PageMode.Sale)
            {
                DataRow r = dsReceipt.receipt.NewRow();
                r["custID"] = ListBox2.SelectedValue;
                r["empID"] = dsReceipt.employee.Select("empLogin = '" + User.Identity.Name + "'")[0]["id"];
                r["ordDate"] = DateTime.Now;
                dsReceipt.receipt.Rows.Add(r);
                for(int i = 0; i<selectedProducts.Rows.Count; i++)
                {
                    DataRow l = dsReceipt.order_line.NewRow();
                    l["inventoryID"] = selectedProducts.Rows[i]["id"];
                    l["receiptID"] = r["id"];
                    l["orlQuantity"] = Request.Form["ctl00$MainContent$gvSelectedProductsSales$ctl0" + (i + 2).ToString() + "$TextBox1"];
                    l["orlOrderReq"] = Convert.ToInt16(l["orlQuantity"]) > Convert.ToInt32(selectedProducts.Rows[i]["Stock"]);
                    l["orlPrice"] = Convert.ToBoolean(l["orlOrderReq"])  ? Convert.ToDouble(selectedProducts.Rows[i]["Price"]) * 1.01 : Convert.ToDouble(selectedProducts.Rows[i]["Price"]);
                    dsReceipt.employee.Rows.Add(l);
                }
            }
        }
    }

    public enum PageMode
    {
        Sale,
        Repair
    }
}