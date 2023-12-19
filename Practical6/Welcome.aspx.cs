using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical6
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.QueryString["name"];
            string prog = Request.QueryString["prog"];

            if(!IsPostBack)
            {
                string lang = Session["language"].ToString();
                if (lang == "Malay")
                {
                    lblName.Text = "Hello, " + name + " dari " + prog;
                    lblProgramme.Text = "Selamat datang ke Laman BAIT2113 Web Application Development";

                } else if (lang == "English")
                {
                    lblName.Text = "Hello, " + name + " from " + prog;
                    lblProgramme.Text = "Welcome to BAIT2113 Web Application Development Website";
                }
            }
        }
    }
}