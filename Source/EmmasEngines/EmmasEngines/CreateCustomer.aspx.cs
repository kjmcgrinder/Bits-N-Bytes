using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using EmmasEnginesLibrary;

namespace EmmasEngines
{
    public partial class CreateCustomer : System.Web.UI.Page
    {
        static CustomerDataSet dsCustomers = new CustomerDataSet();
        int id;

        static CreateCustomer()
        {
            EmmasEnginesLibrary.CustomerDataSetTableAdapters.customerCrudTableAdapter daCustomer = new EmmasEnginesLibrary.CustomerDataSetTableAdapters.customerCrudTableAdapter();
            daCustomer.Fill(dsCustomers.customerCrud);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.IsInRole("Manager") && !User.IsInRole("Sales"))
                Response.Redirect("~/Default.aspx");
            if (Request.QueryString["selectedId"] != null)
            {
                id = Convert.ToInt32(Request.QueryString["selectedId"]);
                lblHeader.Text = "Update Customer";
                if (IsPostBack)
                    return;
                fname.Text = dsCustomers.customerCrud.FindByid(id).custFirst;
                lname.Text = dsCustomers.customerCrud.FindByid(id).custLast;
                email.Text = dsCustomers.customerCrud.FindByid(id).custEmail;
                adr.Text = dsCustomers.customerCrud.FindByid(id).custAddress;
                City.Text = dsCustomers.customerCrud.FindByid(id).custCity;
                zip.Text = dsCustomers.customerCrud.FindByid(id).custPostal;
                Phone.Text = dsCustomers.customerCrud.FindByid(id).custPhone;
            }
            else
                id = -1;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (id == -1)
            {
                DataRow r = dsCustomers.customerCrud.NewRow();
                r["custFirst"] = fname.Text;
                r["custLast"] = lname.Text;
                r["custAddress"] = adr.Text;
                r["custCity"] = City.Text;
                r["custPostal"] = zip.Text;
                r["custPhone"] = Phone.Text;
                r["custEmail"] = email.Text;
                dsCustomers.customerCrud.Rows.Add(r);
            }
            else
            {
                CustomerDataSet.customerCrudRow row = dsCustomers.customerCrud.FindByid(id);
                row.custFirst = fname.Text;
                row.custLast = lname.Text;
                row.custAddress = adr.Text;
                row.custCity = City.Text;
                row.custPostal = zip.Text;
                row.custPhone = Phone.Text;
                row.custEmail = email.Text;
            }
            EmmasEnginesLibrary.CustomerDataSetTableAdapters.customerCrudTableAdapter daCustomer = new EmmasEnginesLibrary.CustomerDataSetTableAdapters.customerCrudTableAdapter();
            daCustomer.Update(dsCustomers.customerCrud);
            dsCustomers.AcceptChanges();
            dsCustomers.customerCrud.Clear();
            daCustomer.Fill(dsCustomers.customerCrud);
            Response.Redirect("~/Sales");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Sales.aspx");
        }
    }
}
 