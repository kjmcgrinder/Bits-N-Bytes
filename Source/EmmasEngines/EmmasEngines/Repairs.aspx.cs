using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EmmasEnginesLibrary;

namespace EmmasEngines
{
    public partial class Repairs1 : System.Web.UI.Page
    {
        static RepairDataSet dsRepairs = new RepairDataSet();

        static Repairs1()
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {            
            if(!User.IsInRole("Technician") && !User.IsInRole("Sales") && !User.IsInRole("Manager"))
                Response.Redirect("~/Default.aspx");
            if (!IsPostBack)
            {
            }
        }

        /* Deletes a service from the database */
        protected void DeleteMethod()//TODO
        {
            /* get the ID of the row to be removed */
            /* generate a sql command to delete where ID=ID */
            /* send sql command to the database */
        }
    }
}
 