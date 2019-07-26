using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swasobigua.mypages
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user"] == null || Session["user"].ToString() == "")
                {
                    Response.Redirect("login.aspx");
                }

                if (Session["rol"].ToString().ToUpper().CompareTo("TRAINER") != 0)
                {//User Player 
                    btnCrearUsuarios.Visible = false;
                }
                lblUsuario.Text = Session["user"].ToString();
            }
        }

        
        protected void btnCrearUsuarios_Click(object sender, EventArgs e)
        {
            Response.Redirect("crearusuarios.aspx");
        }

        protected void btnEntrenos_Click(object sender, EventArgs e)
        {
            Response.Redirect("entrenos.aspx");
        }

        protected void btlCloseSession_Click(object sender, EventArgs e)
        {
            Session["user"] = "";
            Session["rol"] = "";
            Response.Redirect("login.aspx");
        }

       

        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}