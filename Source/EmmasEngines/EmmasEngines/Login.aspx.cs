using EmmasEnginesLibrary.EmployeeDataSetTableAdapters;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Threading.Tasks;

namespace EmmasEngines
{
    public partial class Login : System.Web.UI.Page
    {        
        static Login()
        {
            var roleStore = new RoleStore<IdentityRole>();
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);
            positionTableAdapter daPositions = new positionTableAdapter();
            employeeTableAdapter daEmployees = new employeeTableAdapter();
            DataTable posTable = daPositions.GetData();
            EmmasEnginesLibrary.EmployeeDataSet dsEmployee = new EmmasEnginesLibrary.EmployeeDataSet();
            daEmployees.Fill(dsEmployee.employee);
            foreach (DataRow r in posTable.Rows)
            {
                bool exists = roleManager.RoleExists(r["posName"].ToString());
                if (!exists)
                    roleManager.Create(new IdentityRole(r["posName"].ToString()));
            }
            string userName;
            string position = "";
            foreach (DataRow r in dsEmployee.employee.Rows)
            {
                userName = r["empFirst"].ToString().ToLower()[0] + r["empLast"].ToString().ToLower() + r["id"].ToString();
                if(r["posID"] != DBNull.Value)
                    position = posTable.Select("id = " + r["posID"].ToString())[0]["posName"].ToString();
                IdentityUser user = userManager.Find(userName, "password");
                if (user == null)
                {
                    user = new IdentityUser(userName);
                    userManager.Create(user, "password");                    
                }
                r["loginId"] = user.Id;
                if (user.Roles.Count == 0 && !String.IsNullOrEmpty(position))
                    userManager.AddToRole(user.Id, position);
            }
            daEmployees.Update(dsEmployee.employee);
            dsEmployee.AcceptChanges();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
                Response.Redirect("~/Default");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();
            UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);
            IdentityUser user = manager.Find(txtUsername.Text, txtPassword.Text);
            if (user != null)
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                authenticationManager.SignIn(userIdentity);                
                Response.Redirect("~/Default.aspx");
            }                
            else
            {
                lblResult.Text = "Incorrect username or password";
                lblResult.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
