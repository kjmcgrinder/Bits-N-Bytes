using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmasEngines
{
    public partial class Order_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.IsInRole("Ordering") && !User.IsInRole("Manager"))
                Response.Redirect("~/Default.aspx");
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {

            txtQuantity.Text = "";
            txtSize.Text = "";
            ddlPart.SelectedIndex = -1;
            ddlBrand.SelectedIndex = -1;
        }
    }
}