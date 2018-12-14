using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Web.UI.WebControls;
using System.Data;
using EmmasEnginesLibrary.EmployeeDataSetTableAdapters;

namespace EmmasEngines
{
    public partial class Repair_Details : System.Web.UI.Page
    {
        static DataTable employees;

        static Repair_Details()
        {
            employeeTableAdapter daEmployees = new employeeTableAdapter();
            employees = daEmployees.GetData();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!User.IsInRole("Technician") && !User.IsInRole("Manager"))
                Response.Redirect("~/Default.aspx");

            if (!IsPostBack)
            {
            }
        }

        /* Add the time when an employee starts working on a repair */
        protected void UpdateMethod()
        {
            /* connect to the dataset */
            SqlDataSource table = SqlDataSource1;
            /* Get ID of repair_details table */
            string repairID = Request.QueryString["repairID"];
            /* get current date and time */
            string currentDate = DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");
            /* get employeeID */
            string employeeID = employees.Select("empLogin = '" + User.Identity.Name + "'")[0]["ID"].ToString();
            /* make a sql command to update start time where ID=ID */
            string query = "INSERT INTO repair_progress(employeeID, repairID, startDate) VALUES(" + employeeID.ToString() + ", " + repairID.ToString() + ", '" + currentDate.ToString() + "');";
            /* send sql command to database */
            table.InsertCommand = query;
            table.Insert();
            /* refresh page */
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UpdateMethod();
        }

        /* Add the current time as the finish time for a selected repair_progress */
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            /* connect to the dataset */
            SqlDataSource table = SqlDataSource1;
            /* Get ID of repair_details table */
            string repairID = Request.QueryString["repairID"];
            /* get current date and time */
            string currentDate = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            /* get repair_progress ID */
            int rowIndex = Convert.ToInt32(e.CommandArgument.ToString());
            int ID = Convert.ToInt32(GridView1.Rows[rowIndex].ID);
            /* make a sql command to update finish time where ID=ID */
            string query = "UPDATE repair_progress SET finishDate='" + currentDate.ToString() + "' WHERE ID=" + ID + ";";
            /* send sql command to database */
            table.UpdateCommand = query;
            table.Update();
            /* refresh page */
        }
    }
}
 
 
 