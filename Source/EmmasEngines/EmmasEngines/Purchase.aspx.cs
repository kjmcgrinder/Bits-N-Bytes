using System;
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
        static PurchaseDataSet dsReceipt = new PurchaseDataSet();
        static PurchaseDataSet.productDataTable productTable;

        PageMode Mode
        {
            get { return (PageMode)ViewState["Mode"]; }
            set { ViewState["Mode"] = value; }
        }        

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
            order_lineTableAdapter daLine = new order_lineTableAdapter();
            daLine.Fill(dsReceipt.order_line);
            service_orderTableAdapter daService = new service_orderTableAdapter();
            daService.Fill(dsReceipt.service_order);
            equipmentTableAdapter daEqu = new equipmentTableAdapter();
            daEqu.Fill(dsReceipt.equipment);
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
            DataRow r = dsReceipt.receipt.NewRow();
            r["custID"] = ListBox2.SelectedValue;
            r["empID"] = dsReceipt.employee.Select("empLogin = '" + User.Identity.Name + "'")[0]["id"];
            r["ordDate"] = DateTime.Now;
            r["paymentID"] = ddlPayment.SelectedValue;
            dsReceipt.receipt.Rows.Add(r);
            receiptTableAdapter daReceipt = new receiptTableAdapter();
            daReceipt.Update(dsReceipt.receipt);
            if (Mode == PageMode.Sale)
            {                
                for(int i = 0; i<selectedProducts.Rows.Count; i++)
                {
                    DataRow l = dsReceipt.order_line.NewRow();
                    l["inventoryID"] = selectedProducts.Rows[i]["id"];
                    l["receiptID"] = r["id"];                    
                    l["orlQuantity"] = Request.Form["ctl00$MainContent$gvSelectedProductsSales$ctl0" + (i + 2).ToString() + "$TextBox1"];
                    l["orlOrderReq"] = Convert.ToInt16(l["orlQuantity"]) > Convert.ToInt32(selectedProducts.Rows[i]["Stock"]);
                    l["orlPrice"] = Convert.ToBoolean(l["orlOrderReq"])  ? Convert.ToDouble(selectedProducts.Rows[i]["Price"]) * 1.01 : Convert.ToDouble(selectedProducts.Rows[i]["Price"]);
                    dsReceipt.order_line.Rows.Add(l);
                }
                order_lineTableAdapter daLine = new order_lineTableAdapter();
                daLine.Update(dsReceipt.order_line);                          
            }
            else if(Mode == PageMode.Repair)
            {                
                DataRow eq = dsReceipt.equipment.NewRow();
                eq["equModel"] = txtModel.Text;
                eq["equSerial"] = txtSerialNumber.Text;
                eq["custID"] = r["custID"];
                eq["equtypeID"] = ddlType.SelectedValue;
                eq["equManuID"] = ddlManu.SelectedValue;
                equipmentTableAdapter daEqu = new equipmentTableAdapter();
                daEqu.Update(dsReceipt.equipment);                
                DataRow so = dsReceipt.service_order.NewRow();
                so["serordDateIn"] = DateTime.Now;
                so["serordIssue"] = RD.Text;
                so["serordWarranty"] = RadioButtonList1.SelectedValue == "1";
                so["receiptID"] = r["id"];
                so["serviceID"] = ddlService.SelectedValue;
                so["equipID"] = eq["id"];
                service_orderTableAdapter daService = new service_orderTableAdapter();
                daService.Update(dsReceipt.service_order);
            }
            dsReceipt.AcceptChanges();
            Response.Redirect("~/Default");
        }
    }

    public enum PageMode
    {
        Sale,
        Repair
    }
}