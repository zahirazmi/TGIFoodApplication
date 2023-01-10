using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Food_Ordering_System_Application
{
    public partial class LoginPages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string sql = @"SELECT* FROM UserAccounts WHERE email = @email";
            SqlConnection conn = new SqlConnection(ConfigurationManager.
            ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@email", txtEmailLogin.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                // Email found
                Object objPasswordHash = dt.Rows[0]["PasswordHash"];
                Object objRole = dt.Rows[0]["Role" ];
                Object objEnabled = dt.Rows[0]["Enabled"];

                string password = txtPasswordLogin.Text;
                string storedPasswordHash = objPasswordHash.ToString();
                PBKDF2Hash hash = new PBKDF2Hash(password, storedPasswordHash);

                bool check = hash.PasswordCheck;
                bool enabled = Convert.ToBoolean(objEnabled);

                if (check == true && enabled == true)
                {
                    // password correct and account enabled
                    Session["email"] = txtEmailLogin.Text;
                    Session["Role"] = objRole;
                    if (Session["Role"].ToString() == "user")
                        // change to order page
                        Response.Redirect("HomePage.aspx");
                    else if (Session["Role"].ToString() == "admin")
                        Response.Redirect("AdminPage.aspx");
                }
                else
                { 
                    // password incorrect or account disabled
                    lblStatus.Text = "Incorrect password or account disabled.";
                    lblStatus.Attributes.Add("class", "alert alert-danger");
                    lblStatus.Visible = true;
                }
            }
            else
            {
                // Email not found
                lblStatus.Text = "Incorrect Account Credentials.";
                lblStatus.Attributes.Add("class", "alert alert-danger");
                lblStatus.Visible = true;
            }
        }

        protected void LinkRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUpPages.aspx");
        }
    }
}