using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CitationDB2
{
    public partial class CitationEditor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Calendar1.Visible = false;
            }
            if (!Page.IsPostBack)
            {
                Calendar2.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox3.Text = Calendar1.SelectedDate.ToString("yyyy, MMMM dd");
            Calendar1.Visible = false;
        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            TextBox4.Text = Calendar2.SelectedDate.ToString("MMMM dd, yyyy");
            Calendar2.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Calendar2.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string result = TextBox1.Text.Substring(0, 1);
            string cite = "" + TextBox2.Text + ", " + result + ". (" + TextBox3.Text + "). " + TextBox6.Text + ". Retrieved " + TextBox4.Text + ", from " + TextBox5.Text + "";
            string account = (string) (Session["UserID"]);
            SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
            builder.DataSource = "cop4474cdvargasanchondo.database.windows.net";
            builder.UserID = "dvargasanchondo";
            builder.Password = "Dv954275";
            builder.InitialCatalog = "CitationDB2_db";

            using (SqlConnection connection = new SqlConnection(builder.ConnectionString))
            {

                
                    connection.Open();
                    string qry = "insert into Citations (firstname, lastname, title, datepub, dateretrieve, website, fullcite, UserID) values ('" + TextBox1.Text + "','" + TextBox2.Text + "' , '" + TextBox6.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "' ,'" + TextBox5.Text + "','" + cite + "', '" + account + "')";
                    SqlCommand cmd = new SqlCommand(qry, connection);
                    SqlDataReader sdr = cmd.ExecuteReader();

                    connection.Close();
                Label4.Visible = true;
                Label4.Text = "Your Citation has been successfully saved, to view it <a href='ViewCitations.aspx'>Click Here</a>";
                
             
            }
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label5.Visible = true;
            Label5.Text = "To create a citation enter the author's first name, lastname, and the title of the article you are referencing. The dates can be chosen using the calendar or by inputting the dates in the YYYY, MM DD format for Date Published and MM DD, YYYY for the Date Retrieved.";
        }
    }
}