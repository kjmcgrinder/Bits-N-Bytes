using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin.Security;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace EmmasEngines
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.User.Identity.IsAuthenticated)
                lblLogin.Text = "Welcome " + Page.User.Identity.Name;
            else
                lblLogin.Text = "Login";
        }

        protected void Logout(object sender, EventArgs e)
        {
            var AuthenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            AuthenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }
    }
}