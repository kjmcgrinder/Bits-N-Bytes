using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmmasEnginesLibrary.AdoObjects;
using EmmasEnginesLibrary;
using System.Data;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;

namespace EmmasEngines
{
    public partial class Employees : System.Web.UI.Page
    {
        static EmployeeDataSet dsEmployee;
        int id = -1;
        
        static Employees()
        {
            dsEmployee = new EmployeeDataSet();
            EmmasEnginesLibrary.EmployeeDataSetTableAdapters.employeeTableAdapter daEmployee = new EmmasEnginesLibrary.EmployeeDataSetTableAdapters.employeeTableAdapter();
            daEmployee.Fill(dsEmployee.employee);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Position.Font.Name = fname.Font.Name;
            password.Font.Size = fname.Font.Size;
            if (!User.Identity.IsAuthenticated)
                Response.Redirect("~/Login.aspx");
            MaxID.Value = dsEmployee.employee.Max(i => i["id"]).ToString();
            if (Request.QueryString["id"] != null)
            {
                id = Convert.ToInt32(Request.QueryString["id"]);
                password.Enabled = id == -1;
                confirmPassword.Enabled = id == -1;
                if (IsPostBack)
                    return;
                fname.Text = dsEmployee.employee.FindByid(id).empFirst;
                lname.Text = dsEmployee.employee.FindByid(id).empLast;
                Position.SelectedValue = dsEmployee.employee.FindByid(id).posID.ToString();
            }            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (id == -1)
            {
                DataRow row = dsEmployee.employee.NewRow();
                row["empFirst"] = fname.Text;
                row["empLast"] = lname.Text;
                row["posID"] = Position.SelectedValue;
                UserStore<IdentityUser> store = new UserStore<IdentityUser>();
                UserManager<IdentityUser> manager = new UserManager<IdentityUser>(store);
                IdentityUser user = new IdentityUser(username.Text);
                IdentityResult result = manager.Create(user, password.Text);
                if (result.Succeeded)
                {
                    dsEmployee.employee.Rows.Add(row);
                }
            }
            else
            {
                dsEmployee.employee.FindByid(id).empFirst = fname.Text;
                dsEmployee.employee.FindByid(id).empLast = lname.Text;
                dsEmployee.employee.FindByid(id).posID = Convert.ToInt32(Position.SelectedValue);
            }
            try
            {
                EmmasEnginesLibrary.EmployeeDataSetTableAdapters.employeeTableAdapter daEmployee = new EmmasEnginesLibrary.EmployeeDataSetTableAdapters.employeeTableAdapter();
                daEmployee.Update(dsEmployee.employee);
                dsEmployee.AcceptChanges();
                dsEmployee.employee.Clear();
                daEmployee.Fill(dsEmployee.employee);
            }
            catch
            {
                lblError.Visible = true; 
            }
        }
    }
}