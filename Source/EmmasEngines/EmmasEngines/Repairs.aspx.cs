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
        //static RepairDataSet dsRepairs = new RepairDataSet();

        //format a phone number to look pretty.
        void PhoneFormat(GridView gridview, int phoneColumn)
        {
            /* loop over the gridview */
            foreach (GridViewRow row in gridview.Rows)
            {
                /* get the text */
                string phoneText = row.Cells[phoneColumn].Text;
                /* format the text */
                try
                {
                    phoneText = String.Format("{0:(###) ###-####}", Convert.ToInt64(phoneText));
                } catch { }
                /* set the text */
                row.Cells[phoneColumn].Text = phoneText;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {            
            if(!User.IsInRole("Technician") && !User.IsInRole("Sales") && !User.IsInRole("Manager"))
                Response.Redirect("~/Default.aspx");
            if (!IsPostBack)
            {
                PhoneFormat(GridView1, 7);
            }
        }
    }
}
 