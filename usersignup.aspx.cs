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
    public partial class usersignup : System.Web.UI.Page
    {
        Class1 c1 = new Class1();
        String mainCon = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = "Landlord";
            TextBox17.Text = s;
            numbergenerateone();
        }
        public usersignup()
        {

            mainCon = c1.servercon;

        }


            protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection sqlCon = new SqlConnection(mainCon);
                if (sqlCon.State == ConnectionState.Closed)
                    sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand("signproc", sqlCon);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@mode","add");

      

                sqlCmd.Parameters.AddWithValue("@nationalid",TextBox1.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@fullname",TextBox3.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@email",TextBox13.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@phonenumber",TextBox14.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@address",TextBox15.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Passno", TextBox16.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password",TextBox4.Text.Trim());

                sqlCmd.Parameters.AddWithValue("@confirmpass",TextBox5.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@usertype",TextBox17.Text.Trim());






                sqlCmd.ExecuteNonQuery();
             //   Response.Write("Saved!");
                sqlCon.Close();
                Response.Write("<script>alert(' Account Created Successfully');</script>");
                // populate();
                numbergenerateone();
                TextBox1.Text = "";
                TextBox3.Text = "";
                TextBox13.Text = "";
                TextBox14.Text = "";
                TextBox15.Text = "";
               
                TextBox4.Text = "";
                TextBox5.Text = "";


            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message, "Error Message");
            }


            //if((TextBox1.Text==null))
            //{
            //    Response.Write("<script>alert('Enter the field');</script>");
            //}
            //if ((TextBox3.Text == null))
            //{
            //    Response.Write("<script>alert('Enter the field');</script>");
            //}

            //if ((TextBox13.Text == null))
            //{
            //    Response.Write("<script>alert('Enter the field');</script>");
            //}
            //if ((TextBox14.Text == null))
            //{
            //    Response.Write("<script>alert('Enter the field');</script>");
            //}

            //if ((TextBox15.Text == null))
            //{
            //    Response.Write("<script>alert('Enter the field');</script>");
            //}

            //if ((TextBox16.Text == null))
            //{
            //    Response.Write("<script>alert('Enter the field');</script>");
            //}
            //if ((TextBox4.Text == null))
            //{
            //    Response.Write("<script>alert('Enter the field');</script>");
            //}
            //if ((TextBox5.Text == null))
            //{
            //    Response.Write("<script>alert('Enter the field');</script>");
            //}
            
        }

        public void numbergenerateone()
        {
            SqlConnection sqlCon = new SqlConnection(mainCon);

              sqlCon.Open();

            SqlCommand cmd1r = new SqlCommand();
            cmd1r.Connection = sqlCon;

            cmd1r.CommandText = "select max(passno) as CODE FROM  Landloard";
            cmd1r.CommandType = CommandType.Text;

               SqlDataReader drd = cmd1r.ExecuteReader();
              if (drd.Read())
            {
                String sn, serial, final = String.Empty;

                  if (drd["CODE"].ToString() == "")
                {
                   final = "AS0001";
               }
                else if (drd["CODE"].ToString() != "")
                 {
                    sn = drd["CODE"].ToString();
                 int no = Convert.ToInt32(sn.Substring(2, 4));
               // MessageBox.Show(Convert.ToString(Convert.ToInt32(sn.Substring(2, 5))));
                serial = Convert.ToString(no + 1);
                 final = "AS" + serial.PadLeft(4, '0');
            }
            //MessageBox.Show("CODE");
             TextBox16.Text = final;
               }

             drd.Close();
            sqlCon.Close();
        }
    }
}