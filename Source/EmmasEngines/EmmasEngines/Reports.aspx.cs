﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using EmmasEnginesLibrary.ReportsDataSetTableAdapters;

namespace EmmasEngines
{
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.IsInRole("Manager") && !User.IsInRole("Administration"))
                Response.Redirect("~/Default");
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime Date =  Calendar1.SelectedDate;
        }
    }
}