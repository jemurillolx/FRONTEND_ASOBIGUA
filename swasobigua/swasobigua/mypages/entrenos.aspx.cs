using swasobigua.mypages.Models.Communication;
using swasobigua.mypages.Services;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace swasobigua.mypages
{
    public partial class entrenos : System.Web.UI.Page
    {
        protected static readonly PlayerService playerService = new PlayerService();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user"] == null || Session["user"].ToString() == "")
                {
                    Response.Redirect("login.aspx");
                }

                /*if (Session["rol"].ToString().ToUpper().CompareTo("TRAINER") != 0)
                {//User Player 
                    Response.Redirect("index.aspx");
                }*/
                lblUsuario.Text = Session["user"].ToString();
                Session["Shots"] = "";
                Session["Shot"] = "";
                //load the shots
                var pageAsyncTask = new PageAsyncTask(x => PlayersAsync(x, Session["user"].ToString()));
                this.RegisterAsyncTask(pageAsyncTask);
            }
        }
        protected async Task PlayersAsync(CancellationToken cancellationToken, string username)
        {
            var result = await playerService.GetAllPlayersAsync(username);

            if (result.HttpResponseStatusCode.Equals(HttpStatusCode.OK))
            {
                List<User> users = result.Value;
                ddlPlayer.Items.Clear();
                int i = 1;
                ddlPlayer.Items.Insert(0, new ListItem(("--Seleccionar un Jugador--"), "-1"));
                foreach (User iuser in users)
                {
                    ddlPlayer.Items.Insert(i, new ListItem((iuser.Username + "-" + iuser.Name + "-" + iuser.Lastname), iuser.Username.ToString()));
                    i++;
                }

                return;
            }

            ScriptManager.RegisterStartupScript(this, typeof(string), "Mensaje", "swal('¡Advertencia!', '" + result.Message + "', 'error');", true);

        }

        protected async Task ShotsByPlayerAsync(CancellationToken cancellationToken, string playeruser)
        {
            var result = await playerService.GetAllShotsByPlayerAsync(playeruser);

            if (result.HttpResponseStatusCode.Equals(HttpStatusCode.OK))
            {
                List<shots> lshots = result.Value;
                int i = 1;
                DataTable table = new DataTable();
                table.Columns.Add("id", typeof(string));
                table.Columns.Add("shot", typeof(string));
                table.Columns.Add("timeStamp", typeof(string));
                table.Columns.Add("trainer", typeof(string));
                foreach (shots shot in lshots)
                {
                    DataRow row = table.NewRow();
                    row["id"] = shot.Id.ToString();
                    row["shot"] = i.ToString();
                    var dt = Convert.ToDateTime(shot.TimeStamp);
                    row["timeStamp"] = dt.ToString("MM/dd/yyyy HH:mm:ss");
                    row["trainer"] = (shot.Trainer.Name + "-" + shot.Trainer.Lastname);
                    table.Rows.Add(row);
                    i++;
                }
                if (table.Rows.Count > 0)
                {
                    tbtiros.DataSource = table;
                    Session["Shots"] = table;
                    tbtiros.DataBind();
                }
                return;
            }

            ScriptManager.RegisterStartupScript(this, typeof(string), "Mensaje", "swal('¡Advertencia!', '" + result.Message + "', 'error');", true);

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

        protected void ddlPlayer_SelectedIndexChanged(object sender, EventArgs e)
        {
            string val = ddlPlayer.SelectedItem.Value.ToString();
            if (val != "" || val.CompareTo("-1") != 0)
            {
                var pageAsyncTask = new PageAsyncTask(x => ShotsByPlayerAsync(x, val));
                this.RegisterAsyncTask(pageAsyncTask);
            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            int index = ((GridViewRow)((ImageButton)sender).Parent.Parent).RowIndex;
            DataTable t = (DataTable)Session["Shots"];
            string shotnumber = tbtiros.Rows[index].Cells[1].Text;
            DataRow[] results = t.Select("shot = '" + shotnumber + "'");
            string idshot = "";
            foreach (DataRow item in results)
            {
                //se maneja la fila https://mocktesisasobiguaapi.azurewebsites.net//v1/shots/-1001
                idshot = item[0].ToString();
                break;
            }
            if (idshot != "")
            {
                Session["Shot"] = idshot;
                Response.Redirect("tiro.aspx");
            }
        }

        protected void tbtiros_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            if (Session["Shots"] != null)
            {
                DataTable t = (DataTable)Session["Shots"];
                var newindex = e.NewPageIndex;
                tbtiros.DataSource = t;
                tbtiros.PageIndex = newindex;
                tbtiros.DataBind();
            }
        }
    }
}