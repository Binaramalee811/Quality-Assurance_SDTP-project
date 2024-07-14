using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login
{
    public partial class accident : System.Web.UI.Page
    {
        Class1 c1 = new Class1();
        String mainCon = String.Empty;
        static String resumelink;

        static Int32 applicationid;
        protected void Page_Load(object sender, EventArgs e)
        {



           // TextBox1.Text = class2.First;
           // DropDownList1.Text = class2.Fullname;
           // TextBox2.Text = class2.Phone;
            //TextBox4.Text = class2.Passno;
            TextBox9.Text = DateTime.Today.ToString("yyyy/MM/dd");
            numbergenerateone();
        }
        public accident()
        {
            mainCon = c1.servercon;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string FN = "";
            FN = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string contentType = FileUpload1.PostedFile.ContentType;
            Stream fs = FileUpload1.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            byte[] bytes = br.ReadBytes((Int32)fs.Length);

            SqlConnection sqlCon = new SqlConnection(mainCon);
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            
            SqlCommand cmd = new SqlCommand("sacc", sqlCon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mode", "add");
            //cmd.Parameters.AddWithValue("@empid", btnUploadImage.Text == "Save" ? 0 : ViewState["Eid"]);



            if (FN != "")
            {
                FileUpload1.SaveAs(Server.MapPath("images" + "\\" + FN));
                cmd.Parameters.AddWithValue("@nationalid", TextBox1.Text);
                cmd.Parameters.AddWithValue("@type_of_accomadation", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@phonenum", TextBox2.Text);
                cmd.Parameters.AddWithValue("@acc_address", TextBox3.Text);
                cmd.Parameters.AddWithValue("@longtitute", TextBox4.Text);
                cmd.Parameters.AddWithValue("@latitiute", TextBox5.Text);
                cmd.Parameters.AddWithValue("@fee", TextBox6.Text);
                cmd.Parameters.AddWithValue("@duration", TextBox7.Text);
                cmd.Parameters.AddWithValue("@description", TextBox8.Text);
                cmd.Parameters.AddWithValue("@registered_date", TextBox9.Text);
               
               
               // cmd.Parameters.AddWithValue("@cause", DropDownList1.Text);

             
                cmd.Parameters.AddWithValue("@Filename", FN);


                cmd.Parameters.AddWithValue("@ContentType", contentType);
                cmd.Parameters.AddWithValue("@FileData", bytes);

            }

            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Created Successfully');</script>");
            sqlCon.Close();
            numbergenerateone();
            //TextBox15.Text = "";
            //TextBox2.Text = "";
            //TextBox5.Text = "";


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection sqlCon1 = new SqlConnection(mainCon);
            if (sqlCon1.State == ConnectionState.Closed)
                sqlCon1.Open();
            SqlCommand cmd1 = new SqlCommand("select nationalid,idno,fullname,phonenumber,causeaddress,longtitute,latitiute,vehiclenum,cause,registereddate from  accidentinfo  where nationalid=@nationalid", sqlCon1);
            cmd1.Parameters.AddWithValue("nationalid", TextBox1.Text);
            SqlDataReader reader;
            reader = cmd1.ExecuteReader();
            if (reader.Read())
            {
                TextBox1.Text = reader["nationalid"].ToString();
                TextBox2.Text = reader["idno"].ToString();
                DropDownList1.Text = reader["fullname"].ToString();
                TextBox3.Text = reader["phonenumber"].ToString();

                TextBox4.Text = reader["causeaddress"].ToString();
                TextBox5.Text = reader["longtitute"].ToString();
                TextBox6.Text = reader["latitiute"].ToString();
                TextBox7.Text = reader["vehiclenum"].ToString();
              //  DropDownList1.Text = reader["cause"].ToString();
                TextBox6.Text = reader["registereddate"].ToString();

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


        }
        public void numbergenerateone()
        {
            SqlConnection sqlCon = new SqlConnection(mainCon);

          //  sqlCon.Open();

            SqlCommand cmd1r = new SqlCommand();
            cmd1r.Connection = sqlCon;

            cmd1r.CommandText = "select max(idno) as CODE FROM  accidentinfo";
            cmd1r.CommandType = CommandType.Text;

        //    SqlDataReader drd = cmd1r.ExecuteReader();
         //   if (drd.Read())
            {
                String sn, serial, final = String.Empty;

              //  if (drd["CODE"].ToString() == "")
                //{
                 //   final = "AS0001";
                //}
                //else if (drd["CODE"].ToString() != "")
               // {
                //    sn = drd["CODE"].ToString();
                   // int no = Convert.ToInt32(sn.Substring(2, 4));
                    //MessageBox.Show(Convert.ToString(Convert.ToInt32(sn.Substring(2, 5))));
                    //serial = Convert.ToString(no + 1);
                   // final = "AS" + serial.PadLeft(4, '0');
                }
                //MessageBox.Show("CODE");
               // TextBox17.Text = final;
         //   }

           // drd.Close();
            sqlCon.Close();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ReportGrid.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string FN = "";
            FN = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string contentType = FileUpload1.PostedFile.ContentType;
            Stream fs = FileUpload1.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            byte[] bytes = br.ReadBytes((Int32)fs.Length);

            SqlConnection sqlCon = new SqlConnection(mainCon);
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();

            SqlCommand cmd = new SqlCommand("accidentproc", sqlCon);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mode","edit");
            //cmd.Parameters.AddWithValue("@empid", btnUploadImage.Text == "Save" ? 0 : ViewState["Eid"]);



                
                cmd.Parameters.AddWithValue("@nationalid",TextBox1.Text);
                cmd.Parameters.AddWithValue("@idno", TextBox17.Text);
                cmd.Parameters.AddWithValue("@fullname",DropDownList1.Text);
                cmd.Parameters.AddWithValue("@phonenumber",TextBox2.Text);
                cmd.Parameters.AddWithValue("@causeaddress",TextBox3.Text);
                cmd.Parameters.AddWithValue("@longtitute",TextBox4.Text);
                cmd.Parameters.AddWithValue("@latitiute",TextBox5.Text);
                cmd.Parameters.AddWithValue("@vehiclenum",TextBox6.Text);
                

                cmd.Parameters.AddWithValue("@registereddate", TextBox6.Text);
            cmd.Parameters.AddWithValue("@fileup", FN);


            cmd.Parameters.AddWithValue("@ContentType", contentType);
            cmd.Parameters.AddWithValue("@Data", bytes);




            cmd.ExecuteNonQuery();
            
            sqlCon.Close();
            Response.Write("<script>alert('Updated Successfully');</script>");





        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //try
            //{
            SqlConnection sqlCon = new SqlConnection(mainCon);
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand(@"Delete from [dbo].[ accidentinfo] where [nationalid]='" + TextBox1.Text+"'",sqlCon);
          
            sqlCmd.ExecuteNonQuery();
            Response.Write("<script>alert('Deleted Successfully');</script>");
            sqlCon.Close();




            //    sqlCmd.CommandType = CommandType.StoredProcedure;




            //    sqlCmd.Parameters.AddWithValue("@nationalid",TextBox1.Text.Trim());







            //    sqlCmd.ExecuteNonQuery();
            //    //   Response.Write("Saved!");
            //    sqlCon.Close();
            //    Response.Write("<script>alert('Deleted Successfully');</script>");
            //    // populate();


            //}
            //catch (Exception ex)
            //{
            //    //MessageBox.Show(ex.Message, "Error Message");
            //}
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            TextBox1.Text = "";
            TextBox17.Text = "";
            DropDownList1.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox2.Text = "";
            TextBox5.Text = "";
            TextBox4.Text = "";
          //`  DropDownList1.Text = "";
            TextBox6.Text = "";





            

        }
    }
}
