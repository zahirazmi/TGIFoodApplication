using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Food_Ordering_System_Application
{
    public partial class TGI_Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Role"] != null)
            {
                btnLoginNav.Text = "Log out";
                lblEmailSession.Text = Session["email"].ToString();
                btnLoginNav.Attributes.Add("class", "btn btn-outline-danger");  
                
                string role = Session["Role"].ToString();

                if (Session["Role"].ToString() == "user")
                {
                    linkOrder.Visible = true;
                    btnCartNav.Visible = true;

                }
                if (Session["Role"].ToString() == "admin")
                {
                    linkBtnAdmin.Visible= true;
                    linkBtnDetailSales.Visible= true;
                }
            }
        }

        protected void btnLoginNav_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("LoginPages.aspx");
        }

        protected void linkBtnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
        
        protected void linkBtnAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPage.aspx");
        }

        protected void linkOrder_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuBurgers.aspx");
        }

        protected void linkCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void linkBtnDetailSales_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminReceipt.aspx");
        }

        protected void btnCartNav_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

    }
}