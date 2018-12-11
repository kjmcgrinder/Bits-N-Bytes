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
            if (User.Identity.IsAuthenticated)
            {
                employeeTableAdapter daEmployees = new employeeTableAdapter();
                DataTable employees = daEmployees.GetData();
                Label1.Text = employees.Select("empLogin = '" + User.Identity.Name + "'")[0]["empFirst"].ToString();
            }
        }
    }
}