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
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string GetLocations()
        {

            string script = "";

            Class1 class1 = new Class1(); // Instantiate Class1
            string connectionString = class1.servercon; // Access the connection string

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                if (connection.State == ConnectionState.Closed)
                {
                    connection.Open();
                }

                string query = "SELECT latitiute, longtitute, acc_address FROM studenthome";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            double Lat = Convert.ToDouble(reader["latitiute"]);
                            double Long = Convert.ToDouble(reader["longtitute"]);
                            string name = reader["acc_address"].ToString();

                            // Call JavaScript function to add marker
                            script += $"AddMarker({Lat}, {Long}, '{name}');";
                        }
                    }
                }
            }

            return script;
        }
    }
}