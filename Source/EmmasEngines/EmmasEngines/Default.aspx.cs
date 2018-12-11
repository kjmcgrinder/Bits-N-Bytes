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

namespace EmmasEngines
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //get the first name of the user for the welcome message
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
            string welcomeName;
            foreach (DataRow r in dsEmployee.employee.Rows)
            {
                welcomeName = r["empFirst"].ToString();
                Label1.Text = welcomeName.ToString();
            }
        }
    }
}