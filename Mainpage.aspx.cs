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
    public partial class Mainpage : System.Web.UI.Page
    {
        Class1 c1 = new Class1();
        String mainCon = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
           // loaddata();
        }
        public Mainpage()
        {

            mainCon = c1.servercon;

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection sqlCon = new SqlConnection(mainCon);
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand(@"Delete from [dbo].[accidentreport] where [nationalid]='" + TextBox2.Text + "'", sqlCon);

            sqlCmd.ExecuteNonQuery();
            Response.Write("<script>alert('Deleted Successfully');</script>");
           // loaddata();
            sqlCon.Close();
        }
        //void loaddata()
       // {
           // SqlConnection sqlCon = new SqlConnection(mainCon);
           // if (sqlCon.State == ConnectionState.Closed)
              //  sqlCon.Open();
          //  SqlCommand cmd = new SqlCommand("select * from  accidentreport",sqlCon);
           // SqlDataAdapter da = new SqlDataAdapter(cmd);
           // DataTable dt = new DataTable();
         //   da.Fill(dt);
         //   GridView1.DataSource = dt;
          //  GridView1.DataBind();



       // }
    }
}