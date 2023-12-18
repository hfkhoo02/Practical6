using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical6
{
    public partial class Global : System.Web.UI.Page
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

        protected void btnApply_Click(object sender, EventArgs e)
        {
            
                String theme = ddlTheme.SelectedItem.Value.ToString();
                if (theme == "Standard")
                {
                    this.Session["SelectedCss"] = "Standard.css";
                }
                else if (theme == "Special")
                {
                    this.Session["SelectedCss"] = "Special.css";
                }
            
        }

        protected void chkRmb_CheckedChanged(object sender, EventArgs e)
        {
            if (chkRmb.Checked)
            {
                HttpCookie cookie = new HttpCookie("Preferences");
                cookie["Theme"] = (String)this.Session["SelectedCss"];
                Response.Cookies.Add(cookie);
                cookie.Expires = DateTime.Now.AddDays(30);
            }
        }
    }
}