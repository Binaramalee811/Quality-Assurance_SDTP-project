using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login
{
    public partial class login : System.Web.UI.Page
    {
        Class1 c1 = new Class1();
        String mainCon = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public login()
        {

            mainCon = c1.servercon;

        }


        protected void login__submit_Click(object sender, EventArgs e)
        {





            SqlConnection sqlCon1 = new SqlConnection(mainCon);
            if (sqlCon1.State == ConnectionState.Closed)
                sqlCon1.Open();
            SqlCommand cmd1 = new SqlCommand("select nationalid,fullname,phonenumber,passno from Landloard  where nationalid=@nationalid", sqlCon1);
            cmd1.Parameters.AddWithValue("nationalid",TextBox1.Text);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            if (reader.Read())
            {
                TextBox5.Text = reader["nationalid"].ToString();
                TextBox6.Text = reader["fullname"].ToString();
                TextBox7.Text = reader["phonenumber"].ToString();
                TextBox13.Text = reader["passno"].ToString();


                // TextBox15.Text = reader["homeaddress"].ToString();







                //cmd.Parameters.AddWithValue("@nationalid", TextBox1.Text);
                //cmd.Parameters.AddWithValue("@idno", TextBox17.Text);
                //cmd.Parameters.AddWithValue("@fullname", TextBox3.Text);
                //cmd.Parameters.AddWithValue("@phonenumber", TextBox14.Text);
                //cmd.Parameters.AddWithValue("@causeaddress", TextBox15.Text);
                //cmd.Parameters.AddWithValue("@longtitute", TextBox2.Text);
                //cmd.Parameters.AddWithValue("@latitiute", TextBox5.Text);
                //cmd.Parameters.AddWithValue("@vehiclenum", TextBox4.Text);
                //cmd.Parameters.AddWithValue("@cause", DropDownList1.Text);













            }
            else
            {

                Response.Write("no data found");
            }



            class2.First = TextBox5.Text;
            class2.Fullname = TextBox6.Text;
            class2.Phone = TextBox7.Text;
            class2.Passno= TextBox13.Text;























            SqlConnection sqlCon = new SqlConnection(@"Data Source=DESKTOP-SO2CC2S\SQLEXPRESS;Initial Catalog=Student_Accomadation;Integrated Security=True");
                SqlDataAdapter sda = new SqlDataAdapter("Select * from Landloard where nationalid='" + TextBox1.Text+"'and password='"+TextBox2.Text+"'and usertype='"+DropDownList1.SelectedItem.ToString()+"'",sqlCon);
                DataTable dt = new DataTable();
            sda.Fill(dt);
                if(dt.Rows.Count>0)
                {
                    Response.Write("<script>alert(you are logined as"+dt.Rows[0][0]+"') </script>");
                    if (DropDownList1.SelectedIndex==0)
                    {
                        Response.Redirect("Home.aspx");
                    }
                    else if(DropDownList1.SelectedIndex==1)
                        {
                        Response.Redirect("Mainpage.aspx");
                    }
                    else if (DropDownList1.SelectedIndex==2)
                    {
                        Server.Transfer("Mainpage.aspx");
                    }
                else if (DropDownList1.SelectedIndex == 3)
                {
                    Server.Transfer("Mainpage.aspx");
                }
                else if (DropDownList1.SelectedIndex==4)
                    {
                        Server.Transfer("webmaster.aspx");
                    }

                }
                else
                {
                    Response.Write("Error in your output");
                }



















        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }
    }
}