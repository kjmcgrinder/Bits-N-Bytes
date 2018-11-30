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

        static CreateCustomer()
        {
            EmmasEnginesLibrary.CustomerDataSetTableAdapters.customerCrudTableAdapter daCustomer = new EmmasEnginesLibrary.CustomerDataSetTableAdapters.customerCrudTableAdapter();
            daCustomer.Fill(dsCustomers.customerCrud);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataRow r = dsCustomers.customerCrud.NewRow();            
            r["custFirst"] = fname.Text;
            r["custLast"] = lname.Text;
            r["custAddress"] = adr.Text;
            r["custCity"] = City.Text;
            r["custPostal"] = zip.Text;
            r["custEmail"] = email.Text;
            dsCustomers.customerCrud.Rows.Add(r);
            EmmasEnginesLibrary.CustomerDataSetTableAdapters.customerCrudTableAdapter daCustomer = new EmmasEnginesLibrary.CustomerDataSetTableAdapters.customerCrudTableAdapter();
            daCustomer.Update(dsCustomers.customerCrud);
            dsCustomers.AcceptChanges();
            dsCustomers.customerCrud.Clear();
            daCustomer.Fill(dsCustomers.customerCrud);
            Response.Redirect("~/Sales");
        }
    }
}
 