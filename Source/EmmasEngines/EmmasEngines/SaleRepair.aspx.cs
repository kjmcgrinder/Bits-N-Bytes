using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmasEngines
{
    public partial class SaleRepair : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!User.IsInRole("Technician") && !User.IsInRole("Sales") && !User.IsInRole("Manager"))
                Response.Redirect("~/Default.aspx");
        }
    }
}