using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CitationDB2
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
            builder.DataSource = "citationdb.database.windows.net";
            builder.UserID = "dvargasanchondo";
            builder.Password = "Dv954275!";
            builder.InitialCatalog = "citationdb";

            using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
            {

                string uid = Request.Form["TextBox1"];
                string pass = Request.Form["TextBox2"];
           
                connection.Open();
               // string qry = "select * from Accounts where Username='" + uid + "' and Password='" + pass + "'";
                string qry = "select * from Users where userName='" + uid + "' and password='" + pass + "'";
         
                SqlCommand cmd = new SqlCommand(qry, connection);
                SqlDataReader sdr = cmd.ExecuteReader();
                
                if (sdr.Read())
                {
                    Label4.Text = "Login Sucess......!!";
                    HttpContext.Current.Session["userID"] = sdr["userID"].ToString();
                    HttpContext.Current.Session["userName"] = uid;
                    HttpContext.Current.Session["firstName"] = sdr["firstName"].ToString();
                    //Session["name"] = TextBox1.Text;
                    //Session["ID"] = qry;
                    Response.Redirect("mainPage.aspx");
                }
                else
                {
                    Label4.Text = "UserId & Password Is not correct Try again..!!";

                }
                connection.Close();


            }


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}