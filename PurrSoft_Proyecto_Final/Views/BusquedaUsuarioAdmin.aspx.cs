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
            if (!IsPostBack)
            {
                CargarGrillas();

                UsuarioDAO usuarioDAO = new UsuarioDAO();
                Usuarios usuarioDTO = usuarioDAO.ConsultaPorDocumento(Session["tipoDocBusquedaPerfilAdmin"].ToString(), int.Parse(Session["numeroDocBusquedaPerfilAdmin"].ToString()));
                imgUsuario.ImageUrl = usuarioDTO.Imagen;
                lblNombres.Text = usuarioDTO.Nombres;
                lblApellidos.Text = usuarioDTO.Apellidos;
                lblTelefono.Text = usuarioDTO.Telefono.ToString();
                lblEmail.Text = usuarioDTO.Email;


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
                bool resultado = mascotaDAO.EliminarMascota(idMascota);
                if (resultado == true)
                {

                    Response.Write("<script> alert('Se registro correctamente') </script>");

                }
                else
                {
                    Response.Write("<script> alert('No registro correctamente') </script>");


                }
                CargarGrillas();
            }

            if (e.CommandName == "Actualizar")
            {
                Session["idMascotaActualizar"] = gvdListaMascotas.Rows[indice].Cells[0].Text;
                Response.Redirect("ActualizarDatosMascotasAdmin.aspx");
                CargarGrillas();
            }
            if (e.CommandName == "Ver")
            {
                Session["idMascotaVer"] = gvdListaMascotas.Rows[indice].Cells[0].Text;
                Response.Redirect("VerInfoMascotaAdmin.aspx");

            }

        }

        protected void gvdListadoMascotasInactivas_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow fila = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            int indice = fila.RowIndex;

            if (e.CommandName == "Reactivar")
            {
                MascotaDAO mascotaDAO = new MascotaDAO();
                int idMascota = int.Parse(gvdListadoMascotasInactivas.Rows[indice].Cells[0].Text);
                mascotaDAO.ReactivarMascota(idMascota);
                CargarGrillas();
            }
        }

        protected void CargarGrillas()
        {
            MascotaDAO mascotaDAO = new MascotaDAO();
            gvdListaMascotas.DataSource = mascotaDAO.ConsultarMascotasActivasUsuario(int.Parse(Session["numeroDocBusquedaPerfilAdmin"].ToString())).ToList();
            gvdListaMascotas.DataBind();
            gvdListadoMascotasInactivas.DataSource = mascotaDAO.ConsultarMascotasInactivasUsuario(int.Parse(Session["numeroDocBusquedaPerfilAdmin"].ToString())).ToList();
            gvdListadoMascotasInactivas.DataBind();
        }

        protected void btnCrearMascota_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrearMascotaAdmin.aspx");
        }

        
    }
}