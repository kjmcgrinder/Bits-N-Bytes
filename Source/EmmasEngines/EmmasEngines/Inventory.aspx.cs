using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmasEngines
{
    public partial class Inventory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.IsInRole("Ordering") && !User.IsInRole("Manager"))
                Response.Redirect("~/Defaults.aspx");
        }
        

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}