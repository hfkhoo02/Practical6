using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical6
{
    public partial class FirstPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtGo_Click(object sender, EventArgs e)
        {
            Session["language"] = ddlLanguage.SelectedValue;
            Response.Redirect("Welcome.aspx?name=" + txtName.Text + "&prog=" + rbgProgramme.SelectedValue);
        }
    }
}