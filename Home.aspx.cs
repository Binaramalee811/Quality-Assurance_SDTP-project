using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = class2.First;
            TextBox2.Text = class2.Fullname;
            TextBox3.Text = class2.Phone;
            TextBox4.Text = class2.Passno;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            class2.First = TextBox1.Text;
            class2.Fullname = TextBox2.Text;
            class2.Phone = TextBox3.Text;
            class2.Passno = TextBox4.Text;
            Response.Redirect("accident.aspx");
        }
    }
}