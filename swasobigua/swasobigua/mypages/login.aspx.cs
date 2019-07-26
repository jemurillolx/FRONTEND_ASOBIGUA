using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Net;
using Newtonsoft.Json.Linq;
using System.Threading.Tasks;
using System.Threading;
using swasobigua.mypages.Services;

namespace swasobigua.mypages
{
    public partial class login : System.Web.UI.Page
    {
        protected static readonly UserService userService = new UserService();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["user"] = "";
                Session["rol"] = "";
            }
        }


        protected void btn_clicklogin2(object sender, EventArgs e)
        {

            try
            {
                var pageAsyncTask = new PageAsyncTask(c => LoginAsync(c, this.tbxUser.Text.ToString(), this.tbxClave.Text.ToString()));

                this.RegisterAsyncTask(pageAsyncTask);
                
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Mensaje", "swal('¡Advertencia!', 'Usuario o Clave Incorrecta', 'error');",true);
            }
        }

        protected async Task LoginAsync(CancellationToken cancellationToken, string username, string password)
        {
            var result = await userService.LoginAsync(username, password);

            if (result.HttpResponseStatusCode.Equals(HttpStatusCode.OK))
            {
                User user = result.Value;
                
                Session["rol"] = user.UserType;
                Session["user"] = user.Username;
                Response.Redirect("index.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(string), "Mensaje", "swal('¡Advertencia!', '" + result.Message + "', 'error');", true);
            }


        }

        protected void btnContacto_Click(object sender, EventArgs e)
        {
            Response.Redirect("contacto.aspx");
        }
    }
}