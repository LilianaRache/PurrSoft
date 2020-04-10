using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurrSoft_Proyecto_Final.Views
{
    public partial class Perfil_Usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UsuarioDAO usuarioDAO = new UsuarioDAO();
                Usuarios usuarioDTO = usuarioDAO.ConsultaPorDocumento(Session["tipoDocumentoLogin"].ToString(), int.Parse(Session["numeroDocumentoLogin"].ToString()));
                imgFotoUsuario.ImageUrl = usuarioDTO.Imagen;
                lblNombresUsu.Text = usuarioDTO.Nombres;
                lblApellidosUsu.Text = usuarioDTO.Apellidos;
                lblTelefono.Text = usuarioDTO.Telefono.ToString();
                lblEmail.Text = usuarioDTO.Email;
                CargarGrilla();
            }
                
        }


        protected void gvdListaMascotasUsu_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow fila = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            int indice = fila.RowIndex;

            if (e.CommandName == "Ver")
            {
                Session["IdMascotaGrilladeUsuario"] = gvdListaMascotasUsu.Rows[indice].Cells[0].Text;
                Response.Redirect("VerDetalleHistoriaUsuario.aspx");
            }
        }


        protected void CargarGrilla()
        {
            MascotaDAO mascotaDAO = new MascotaDAO();
            gvdListaMascotasUsu.DataSource = mascotaDAO.ConsultarMascotasActivasUsuario(int.Parse(Session["numeroDocumentoLogin"].ToString()));
            gvdListaMascotasUsu.DataBind();
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            Response.Redirect("ActualizarDatosUSUARIO.aspx");
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}