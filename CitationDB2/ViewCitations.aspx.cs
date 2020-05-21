using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace CitationDB2
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {





            {

                SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
                builder.DataSource = "cop4474cdvargasanchondo.database.windows.net";
                builder.UserID = "dvargasanchondo";
                builder.Password = "Dv954275";
                builder.InitialCatalog = "CitationDB2_db";

                using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
                {


                    connection.Open();
                    SqlDataAdapter sqlDa = new SqlDataAdapter("select fullcite from Citations where UserID='" + Session["UserID"] + "'", connection);
                    DataTable dtbl = new DataTable();
                    sqlDa.Fill(dtbl);
                    Citations.DataSource = dtbl;
                    Citations.DataBind();




                    connection.Close();

                }

            }
        }

        protected void Citations_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
