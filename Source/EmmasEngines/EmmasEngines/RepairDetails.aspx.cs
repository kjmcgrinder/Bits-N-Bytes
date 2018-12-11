using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmasEngines
{
    public partial class Repair_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!User.IsInRole("Technician") && !User.IsInRole("Manager"))
                Response.Redirect("~/Default.aspx");

            if (!IsPostBack)
            {
            }
        }

        /* Add the time when an employee finishes working on a repair */
        protected void UpdateMethod()//TODO: get employeeID
        {
            /* connect to the dataset */
            SqlDataSource table = SqlDataSource1;
            /* Get ID of repair_details table */
            string repairID = Request.QueryString["repairID"];
            /* get current date and time */
            string currentDate = DateTime.Now.ToString("dd-MM-yyyy hh:mm");
            /* get employeeID */
            string employeeID = "1";
            /* make a sql command to update finish time where ID=ID */
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
    }
}
 
 
 