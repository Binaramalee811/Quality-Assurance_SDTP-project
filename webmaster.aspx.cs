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
    public partial class webmaster : System.Web.UI.Page
    {
        Class1 c1 = new Class1();
        String mainCon = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {

            string s = "Not";
            TextBox17.Text = s;
          



            //if ((TextBox1.Text == null))
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

            //if ((DropDownList1.Text == null))
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
        public webmaster()
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
                SqlCommand sqlCmd = new SqlCommand("addreg", sqlCon);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@mode", "add");



                sqlCmd.Parameters.AddWithValue("@nationalid", TextBox1.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@fullname", TextBox3.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@email", TextBox13.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@phonenumber", TextBox14.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@address", TextBox15.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@usertype", DropDownList1.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password", TextBox4.Text.Trim());

                sqlCmd.Parameters.AddWithValue("@confirmpass", TextBox5.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@vehiclenum", TextBox17.Text.Trim());











                sqlCmd.ExecuteNonQuery();


                loaddata();
              
                sqlCon.Close();
                Response.Write("<script>alert('Record Created Successfully');</script>");

                // populate();


            }
            catch (Exception ex)
            {
                //MessageBox.Show(ex.Message, "Error Message");
            }













        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, ImageClickEventArgs e)
        { 

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {



            SqlConnection sqlCon1 = new SqlConnection(mainCon);
            if (sqlCon1.State == ConnectionState.Closed)
                sqlCon1.Open();
            SqlCommand cmd1 = new SqlCommand("select nationalid,fullname,email,phonenumber,address,usertype,password,confirmpass,vehiclenum from signintable  where nationalid=@nationalid", sqlCon1);
            cmd1.Parameters.AddWithValue("nationalid", TextBox2.Text);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            if (reader.Read())
            {
                TextBox1.Text = reader["nationalid"].ToString();
                TextBox3.Text = reader["fullname"].ToString();
                TextBox13.Text = reader["email"].ToString();
                TextBox14.Text = reader["phonenumber"].ToString();

                TextBox15.Text = reader["address"].ToString();
                DropDownList1.Text = reader["usertype"].ToString();
                TextBox4.Text = reader["password"].ToString();
                TextBox5.Text = reader["confirmpass"].ToString();
                TextBox17.Text = reader["vehiclenum"].ToString();
               

 }
            else
            {

                Response.Write("no data found");
            }




























            SqlConnection sqlCon = new SqlConnection(mainCon);
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand(@"Delete from [dbo].[signintable] where [nationalid]='" + TextBox1.Text + "'", sqlCon);

            sqlCmd.ExecuteNonQuery();
            loaddata();
            sqlCon.Close();
            Response.Write("<script>alert('Deleted Successfully');</script>");
        }
        void loaddata()
        {
            SqlConnection sqlCon = new SqlConnection(mainCon);
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand cmd = new SqlCommand("select * from  signintable ", sqlCon);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();



        }
    }
}