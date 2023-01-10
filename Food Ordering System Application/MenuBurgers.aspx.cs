using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing.Design;
using System.Xml.Linq;

namespace Food_Ordering_System_Application
{
    public partial class MenuBurgers : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cName = new HttpCookie("Name");


            if (!Page.IsPostBack)
            {
                    string hexTicks = DateTime.Now.Ticks.ToString("X");
                    lblSalesID.Text = hexTicks.Substring(hexTicks.Length - 15, 9);
                    Response.Cookies["Name"].Value = lblSalesID.Text;

            }
            else
            {
                cName.Value = lblSalesID.Text;
            }



        }

        protected void btnBurgerAdd1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("addCart", conn);

            Button btnBurgerAdd1 = (Button)sender;
            ListViewDataItem ListViewItem = (ListViewDataItem)btnBurgerAdd1.NamingContainer;
            Label itemid = (Label)ListViewItem.FindControl("lblItemID1");
            TextBox quantity = (TextBox)ListViewItem.FindControl("txtQuantitiy");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@salesid", lblSalesID.Text);
            cmd.Parameters.AddWithValue("@itemid", itemid.Text);
            cmd.Parameters.AddWithValue("@quantity", quantity.Text);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                lblStatus.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }
            quantity.Text = "1";

            Response.Cookies.Add(new HttpCookie("Name", lblSalesID.Text));



        }

        protected void btnBurgerAdd2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("addCart", conn);

            Button btnBurgerAdd1 = (Button)sender;
            ListViewDataItem ListViewItem = (ListViewDataItem)btnBurgerAdd1.NamingContainer;
            Label itemid = (Label)ListViewItem.FindControl("lblItemID2");
            TextBox quantity = (TextBox)ListViewItem.FindControl("txtBurgerQuantity2");
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@salesid", lblSalesID.Text);
            cmd.Parameters.AddWithValue("@itemid", itemid.Text);
            cmd.Parameters.AddWithValue("@quantity", quantity.Text);

            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                lblStatus.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }
            quantity.Text = "1";



            Response.Cookies.Add(new HttpCookie("Name", lblSalesID.Text));

        }

        
    }






}
