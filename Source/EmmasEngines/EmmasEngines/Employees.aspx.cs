using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmmasEnginesLibrary.AdoObjects;
using EmmasEnginesLibrary;

namespace EmmasEngines
{
    public partial class Employees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/Login.aspx");            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var Employee = new Employee(fname.Text, lname.Text, 0);
            Employee.Update();            
        }
    }
}