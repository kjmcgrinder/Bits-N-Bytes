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
        static DataTable employees;

        static Default()
        {
            employeeTableAdapter daEmployees = new employeeTableAdapter();
            employees = daEmployees.GetData();
        }

        protected void Page_Load(object sender, EventArgs e)
        {            
            if (User.Identity.IsAuthenticated)                            
                Label1.Text = employees.Select("empLogin = '" + User.Identity.Name + "'")[0]["empFirst"].ToString();            
        }
    }
}