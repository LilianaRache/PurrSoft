using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace PurrSoft_Proyecto_Final.Views
{
    public partial class BusquedaUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            Usuarios usuarioDTO = usuarioDAO.ConsultaPorDocumento(Session["tipoDocBusquedaPerfilAdmin"].ToString(), int.Parse(Session["numeroDocBusquedaPerfilAdmin"].ToString())) ;
            imgUsuario.ImageUrl = usuarioDTO.Imagen;
            lblNombres.Text = usuarioDTO.Nombres;
            lblApellidos.Text = usuarioDTO.Apellidos;
            lblTelefono.Text = usuarioDTO.Telefono.ToString();
            lblEmail.Text = usuarioDTO.Email;

            if (!IsPostBack)
            {
                CargarGrilla();
            }
            
        }

        protected void gvdListaMascotas_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            GridViewRow fila = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            int indice = fila.RowIndex;

            if (e.CommandName == "Eliminar")
            {
                int idMascota = int.Parse(gvdListaMascotas.Rows[indice].Cells[0].Text);
                MascotaDAO mascotaDAO = new MascotaDAO();
                CargarGrilla();
                mascotaDAO.EliminarMascota(idMascota);
            }

            if (e.CommandName == "Actualizar")
            {
                Session["idMascotaActualizar"] = gvdListaMascotas.Rows[indice].Cells[0].Text;
                Session["tipoDocUsuarioActualizar"] = gvdListaMascotas.Rows[indice].Cells[1].Text;
                Session["numeroDocUsuarioActualizar"] = gvdListaMascotas.Rows[indice].Cells[2].Text;
                Response.Redirect("ActualizarDatosMascotasAdmin.aspx");
            }
            if (e.CommandName == "Ver")
            {
                Session["idMascotaVer"] = gvdListaMascotas.Rows[indice].Cells[0].Text;
                Response.Redirect("VerInfoMascotaAdmin.aspx");

            }

        }

        protected void CargarGrilla()
        {
            MascotaDAO mascotaDAO = new MascotaDAO();
            gvdListaMascotas.DataSource = mascotaDAO.ConsultarMascotasUsuario(int.Parse(Session["numeroDocBusquedaPerfilAdmin"].ToString())).ToList();
            gvdListaMascotas.DataBind();
        }

        protected void btnCrearMascota_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrearMascotaAdmin.aspx");
        }
    }
}