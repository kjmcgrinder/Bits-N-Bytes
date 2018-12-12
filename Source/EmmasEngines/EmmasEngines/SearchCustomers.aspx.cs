using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmmasEngines
{
    public partial class SearchCustomers : System.Web.UI.Page
    {

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
                }
                catch { }
                /* set the text */
                row.Cells[phoneColumn].Text = phoneText;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!User.IsInRole("Sales") && !User.IsInRole("Manager"))
                Response.Redirect("~/Default.aspx");

            PhoneFormat(GridView1, 2);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("~/CreateCustomer.aspx?selectedId=" + GridView1.SelectedValue);
        }

        protected void txtPhone_TextChanged(object sender, EventArgs e)
        {

        }
    }
}