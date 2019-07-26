using swasobigua.mypages.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swasobigua.mypages
{
    public partial class crearusuarios : System.Web.UI.Page
    {

        protected static readonly UserService userService = new UserService();

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
                    Response.Redirect("index.aspx");
                }
                lblUsuario.Text = Session["user"].ToString();
               

            }
        }

        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void btlCloseSession_Click(object sender, EventArgs e)
        {
            Session["user"] = "";
            Session["rol"] = "";
            Response.Redirect("login.aspx");
        }

       

        protected void BirthDayCalendar_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void ddlRol_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void ddlRol_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            //create a new trainer or player
            bool create = false;
            string rol = String.Empty;
            try
            {
                
                if (this.tbxName.Text.Trim() == "" || this.tbxName.Text.Trim() == String.Empty)
                {
                    ScriptManager.RegisterStartupScript(this, typeof(string), "Mensaje", "swal('¡Advertencia!', 'Ingrese un nombre', 'info');", true);

                    return;
                }
                if (this.tbxLastname.Text.Trim() == "" || this.tbxLastname.Text.Trim() == String.Empty)
                {
                    ScriptManager.RegisterStartupScript(this, typeof(string), "Mensaje", "swal('¡Advertencia!', 'Ingrese Apellidos', 'info');", true);

                    return;
                }
              
                if (this.tbxMail.Text.Trim() == "" || this.tbxMail.Text.Trim() == String.Empty)
                {
                    ScriptManager.RegisterStartupScript(this, typeof(string), "Mensaje", "swal('¡Advertencia!', 'Ingrese un correo', 'info');", true);

                    return;
                }
                if (this.tbxUsuario.Text.Trim() == "" || this.tbxUsuario.Text.Trim() == String.Empty)
                {
                    ScriptManager.RegisterStartupScript(this, typeof(string), "Mensaje", "swal('¡Advertencia!', 'Ingrese un usuario', 'info');", true);

                    return;
                }
                if (this.tbxPassword1.Text.Trim() == "" || this.tbxPassword1.Text.Trim() == String.Empty)
                {
                    ScriptManager.RegisterStartupScript(this, typeof(string), "Mensaje", "swal('¡Advertencia!', 'Ingrese una Clave', 'info');", true);
                    return;
                }
                if (this.tbxPassword.Text.Trim() == "" || this.tbxPassword.Text.Trim() == String.Empty)
                {
                    ScriptManager.RegisterStartupScript(this, typeof(string), "Mensaje", "swal('¡Advertencia!', 'Confirme la Clave', 'info');", true);
                    return;
                }
                if (this.tbxPassword1.Text.ToString().CompareTo(this.tbxPassword.Text.ToString()) !=0)
                {

                    ScriptManager.RegisterStartupScript(this, typeof(string), "Mensaje", "swal('¡Advertencia!', 'Las Claves no son las mismas', 'info');", true);
                    return;
                }
                rol = "";
                if (this.ddlRol.SelectedValue.CompareTo("ENTRENADOR") == 0)
                {
                    rol = "Trainer";
                }
                else
                {
                    rol = "Player";
                }
                if (rol != "")
                {
                    create = true;
                    var pageAsyncTask = new PageAsyncTask(x => CreateUserAsync(x, this.tbxUsuario.Text.ToString(), this.tbxPassword.Text.ToString(), this.tbxName.Text.ToString(), this.tbxLastname.Text.ToString(), this.tbxMail.Text.ToString(), rol));
                    this.RegisterAsyncTask(pageAsyncTask);
                }
                
            }
            catch (Exception ex)
            {
                //create = false;
            }
            finally
            {
                if (!create)
                {
                
                    ScriptManager.RegisterStartupScript(this, typeof(string), "Mensaje", "swal('¡Advertencia!', 'No se logró crear el usuario', 'error');", true);

                }
            }
        }

        protected async Task CreateUserAsync(CancellationToken cancellationToken, string username, string password, string name, string lastname, string email, string usertype)
        {
            var result = await userService.CreateUserAsync(username, password, name, lastname, email, usertype);

            if (result.HttpResponseStatusCode.Equals(HttpStatusCode.Created))
            {
                User user = result.Value;

               // Console.WriteLine(user.Username);
                //Response.Redirect("graficas.aspx");
                ScriptManager.RegisterStartupScript(this, typeof(string), "Mensaje", "swal('¡Exitó!', '"+result.Message+"', 'success');", true);
                return;
            }
          
                ScriptManager.RegisterStartupScript(this, typeof(string), "Mensaje", "swal('¡Advertencia!', '"+result.Message+"', 'error');", true);
            

           
        }
    }
}