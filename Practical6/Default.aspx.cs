using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string _str = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.lblShow.Text = this._str;
            this.lblShow2.Text = (String)this.Session["str"];
        }

        protected void SubmitString_Click(object sender, EventArgs e)
        {
            this._str = this.TextBox1.Text;
            this.Session["str"] = this.TextBox1.Text;
            this.lblShow.Text = this._str;

            this.lblShow2.Text = (String)this.Session["str"];
        }
    }
}