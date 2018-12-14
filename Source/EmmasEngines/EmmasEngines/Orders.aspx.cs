using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using System.Data;
using EmmasEnginesLibrary;
using EmmasEnginesLibrary.OrderDataSetTableAdapters;
// by Kanghyun Jo 
// 2018-12-13

namespace EmmasEngines
{
    public partial class Orders : System.Web.UI.Page
    {
        private static OrderDataSet dsOrder;

        // Declare a reference to the rows of search records
        private static DataRow[] orders;

        static Orders()
        {
            dsOrder = new OrderDataSet();

            // Initialize the table adapters
            OrderRequestTableAdapter daOrderRequest = new OrderRequestTableAdapter();

            try
            {
                // Fill the data adapter with data from the dataset
                daOrderRequest.Fill(dsOrder.OrderRequest);
            }
            catch { }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.IsInRole("Ordering") && !User.IsInRole("Manager"))
                Response.Redirect("~/Default.aspx");
        }


        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtBrand.Text = "";
            txtName.Text = "";
            txtNumber.Text = "";
        }

        // Add customer info to formview
        private string GetOrderRequestCriteria()
        {
            // Declare an empty string variable to hold criteria data
            string criteria = "";

            // Gets order by inventory ID
            criteria = (this.ddlProduct.SelectedValue != "All Products") ? "ID = " + this.ddlProduct.SelectedValue.ToString() : "";
            return criteria;
        }


        private void DisplayOrderRequests()
        {
            // Check to see if records are in the rows object
            if (orders.Count() > 0)
            {
                // Show the headings and label
                lblOrderRequestsCount.Text = orders.Count().ToString() + " record(s) found.";
                tblTableHeadings.Visible = lblOrderRequestSearchResults.Visible = true;

                // Loop through to get all customer information
                foreach (DataRow row in orders)
                {
                    // Declare table rows to hold table
                    TableRow tblRow = new TableRow();

                    // Declare table cells that will hold all cell data
                    TableCell prodName = new TableCell();
                    TableCell prodBrand = new TableCell();
                    TableCell invQuantity = new TableCell();
                    TableCell orlQuantity = new TableCell();
                    TableCell orlPrice = new TableCell();

                    // Add data to each table cell
                    orlPrice.Text = row.ItemArray[1].ToString();
                    orlQuantity.Text = row.ItemArray[2].ToString();
                    invQuantity.Text = row.ItemArray[3].ToString();
                    prodName.Text = row.ItemArray[4].ToString();
                    prodBrand.Text = row.ItemArray[5].ToString();               
                                      

                    // Add each table cell to the table row
                    tblRow.Cells.Add(prodName);
                    tblRow.Cells.Add(prodBrand);
                    tblRow.Cells.Add(invQuantity);
                    tblRow.Cells.Add(orlQuantity);
                    tblRow.Cells.Add(orlPrice);

                    // Add the row to the table
                    this.tblCustomerInfo.Rows.Add(tblRow);
                }
            }
            else
            {
                // Hide the heading, adjust the label accordingly
                lblOrderRequestsCount.Text = "No order(s) found.";
                tblTableHeadings.Visible = lblOrderRequestSearchResults.Visible = false;
            }
        }

        protected void btnSearchOrderRequests_Click(object sender, EventArgs e)
        {
            // Show the panel
            pnlResults.Visible = true;
   
            // Check if table is empty
            if (dsOrder.OrderRequest.Count > 0)
            {
                string criteria = GetOrderRequestCriteria();
                orders = (criteria.Length > 0) ? dsOrder.OrderRequest.Select(criteria) : dsOrder.OrderRequest.Select();
                DisplayOrderRequests();
            }

        }
    }
}

//// Declare a reference to the dataset
//private static OrderDataSet dsOrder;

//// Declare a reference to the rows of search records
//private static DataRow[] orders;

//static Orders()
//{
//    dsOrder = new OrderDataSet();

//    // Initialize the table adapters
//    OrderRequestTableAdapter daOrderRequest = new OrderRequestTableAdapter();

//    try
//    {
//        // Fill the data adapter with data from the dataset
//        daOrderRequest.Fill(dsOrder.OrderRequest);
//    }
//    catch { }

//}

//private string GetOrderRequestCriteria()
//{
//    string criteria = "";

//    // Filter by Product Brand
//    criteria = (this.txtBrand.Text.Length > 0 && criteria.Length > 0) ? " AND prodBrand LIKE " + this.txtBrand.Text + "'"
//        : (this.txtBrand.Text.Length > 0) ? "prodBrand LIKE '%" + this.txtBrand.Text + "%'" : "";

//    return criteria;
//}

//// add Order Requests to grid view
//private void DisplayOrderRequets()
//{

//}