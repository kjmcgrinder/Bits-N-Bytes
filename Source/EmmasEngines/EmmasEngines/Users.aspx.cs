using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmasEngines
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.IsInRole("Manager"))
                Response.Redirect("~/Default.aspx");
        }

        protected void gvEmployees_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("~/Employees.aspx?id=" + gvEmployees.SelectedValue);            
        }
    }
}