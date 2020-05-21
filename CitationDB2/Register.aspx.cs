using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CitationDB2
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
            builder.DataSource = "cop4474cdvargasanchondo.database.windows.net";
            builder.UserID = "dvargasanchondo";
            builder.Password = "Dv954275";
            builder.InitialCatalog = "CitationDB2_db";

            using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
            {

                if (TextBox2.Text == TextBox3.Text)
                {
                    connection.Open();
                    string qry = "insert into User_Cred (Username, Password) values ('" + TextBox1.Text + "','" + TextBox2.Text + "')";
                    SqlCommand cmd = new SqlCommand(qry, connection);
                    SqlDataReader sdr = cmd.ExecuteReader();

                    connection.Close();

                    Response.Redirect("Login.aspx");
                }
                else
                {
                    Label4.Text = "Please make sure the passwords match.";
                }
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}