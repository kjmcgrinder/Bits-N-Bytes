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
                string repairID = Request.QueryString["repairID"];
            }
        }

        /* Add the time when an employee finishes working on a repair */
        protected void UpdateMethod()//TODO
        {
            /* Get ID of repair_details table */
            /* get current date and time */
            /* make a sql command to update finish time where ID=ID */
            /* send sql command to database */
        }
    }
}
 
 
 