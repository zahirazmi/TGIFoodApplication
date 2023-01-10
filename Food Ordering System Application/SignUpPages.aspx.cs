using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Threading;

namespace Food_Ordering_System_Application
{
    public partial class SignUpPages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPages.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string password = txtPasswordRegister.Text;
            PBKDF2Hash hash = new PBKDF2Hash(password);
            string passwordHash = hash.HashedPassword;
            bool enabled = true;
            SqlConnection conn = new SqlConnection(ConfigurationManager.
            ConnectionStrings["ConnectionString"].ConnectionString);
            string sql = @"INSERT INTO UserAccounts VALUES (@name, @phoneNo, @email, @passwordhash, @role, @enabled )";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@name", txtNameRegister.Text);
            cmd.Parameters.AddWithValue("@phoneNo", txtPhoneNoRegister.Text);
            cmd.Parameters.AddWithValue("@email", txtEmailRegister.Text);
            cmd.Parameters.AddWithValue("@passwordhash", passwordHash);
            cmd.Parameters.AddWithValue( "@role" , "user" );
            cmd.Parameters.AddWithValue("@enabled", enabled);
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                lblStatus.Text = "Yay! You have registered succefully!";
                lblStatus.Attributes.Add("class", "alert alert-success");
                lblStatus.Visible = true;

            }

            catch (SqlException ex)
            {
                lblStatus.CssClass=
                lblStatus.Text = ex.Message;
                lblStatus.Attributes.Add("class", "alert alert-danger");
                lblStatus.Visible = true;

            }
            finally
            {
                conn.Close();
            }
        }
    }
}