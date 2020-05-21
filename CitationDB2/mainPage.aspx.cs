using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CitationDB2
{
    public partial class mainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Response.Cache.SetRevalidation(HttpCacheRevalidation.AllCaches);
            Response.Expires = -1;
            Response.AppendHeader("Pragma", "no-cache"); // HTTP 1.0

            if (Session["userID"] == null)
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}