using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmmasEnginesLibrary;

namespace EmmasEngines
{
    public partial class Purchase : System.Web.UI.Page
    {
        PageMode Mode;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/Login.aspx");
            if(!IsPostBack)
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
    }

    public enum PageMode
    {
        Sale,
        Repair
    }
}