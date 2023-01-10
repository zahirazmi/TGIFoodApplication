using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Ordering_System_Application
{
    public partial class Cart : System.Web.UI.Page
    {
        static double totalAmount;
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cName = Request.Cookies["Name"];
            lblSalesID.Text = cName.Value;
            getTotalAmount();
            displayCosts();


        }



        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            confrimSale();
            addReceipt();
            Response.Redirect("ThankYou.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            removeSale();
            Response.Redirect("MenuBurgers.aspx");
        }

        void getTotalAmount()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("getTotalAmount", conn);


            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@salesid", lblSalesID.Text);


            try
            {
                conn.Open();
                totalAmount = (double)cmd.ExecuteScalar();
                lblTotal.Text = totalAmount.ToString("c2");
            }
            catch (SqlException ex)
            {
                lblStatus.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }



        }

        void displayCosts()
        {
            double serviceTax, amountRounding, totalAmountFinal;

            serviceTax = totalAmount * 0.06;
            totalAmountFinal = Math.Round((totalAmount + serviceTax) / 0.05) * 0.05;
            amountRounding = totalAmountFinal - (totalAmount + serviceTax);

            lblTotalAmount.Text = totalAmountFinal.ToString("c2");
            lblTax.Text = serviceTax.ToString("c2");
            lblRounding.Text = amountRounding.ToString("c2");
        }

        void confrimSale()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("confirmSales", conn);


            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@salesid", lblSalesID.Text);


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
        }

        void addReceipt()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("addToAdminReciept", conn);


            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@salesid", lblSalesID.Text);

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
        }

        void removeSale()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("removeSales", conn);


            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@salesid", lblSalesID.Text);


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
        }
    }
}
