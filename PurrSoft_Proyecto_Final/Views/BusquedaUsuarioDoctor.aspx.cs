using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurrSoft_Proyecto_Final.Views
{
    public partial class BusquedaUsuarioDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarGrilla();

                Usuarios usuarioDTO = (Usuarios)Session["usuarioBuscadoDoctor"];
                imgPerfilDoctor.ImageUrl = usuarioDTO.Imagen;
                lblNombres.Text = usuarioDTO.Nombres;
                lblApellidos.Text = usuarioDTO.Apellidos;
                lblTelefono.Text = usuarioDTO.Telefono.ToString();
                lblEmail.Text = usuarioDTO.Email;

            }


        }

        protected void gvdListaMascotasBusquedaDoctor_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow fila = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            int indice = fila.RowIndex;

            if (e.CommandName == "Ver")
            {
                Session["idMascotaEscogidaDoctor"] = gvdListaMascotasBusquedaDoctor.Rows[indice].Cells[0].Text;
                Response.Redirect("HistoriasClinicas.aspx");
            }
        }

        protected void CargarGrilla()
        {
            MascotaDAO mascotaDAO = new MascotaDAO();
            gvdListaMascotasBusquedaDoctor.DataSource = mascotaDAO.ConsultarMascotasActivasUsuario(int.Parse(Session["NumeroDocBuscadoDoctor"].ToString())).ToList();
            gvdListaMascotasBusquedaDoctor.DataBind();
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("PerfilDoctor.aspx");
        }
    }
}