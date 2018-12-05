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
        public static string[] purchaseStyles = new string[] { "Purchase", "Edit Customer", "Edit Employee" };
        public static string[] formStyles = new string[] { "Purchase" };        

        protected void Logout(object sender, EventArgs e)
        {
            var AuthenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            AuthenticationManager.SignOut();
            Response.Redirect("~/Login.aspx");
        }

        protected void MainContent_Load(object sender, EventArgs e)
        {
            if (!Page.User.Identity.IsAuthenticated)
                Response.Redirect("~/Login.aspx");
        }
    }
}