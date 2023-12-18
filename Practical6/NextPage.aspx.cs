using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical6
{
    public partial class NextPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["Preferences"];
            if (cookie != null)
            {
                this.Session["SelectedCss"] = cookie["Theme"];
            }
            lblVisit.Text = "You are visitors : " + Application["VisitorCount"];
            lblAccess.Text = "You access on " + DateTime.Now.ToString();
        }
    }
}