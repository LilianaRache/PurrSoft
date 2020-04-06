using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurrSoft_Proyecto_Final.Views
{
    public partial class HistoriaClinica : System.Web.UI.Page
    {
   
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MascotaDAO mascotaDAO = new MascotaDAO();
                Mascotas mascotaDTO = mascotaDAO.ConsultaPorId(int.Parse(Session["idMascotaEscogidaDoctor"].ToString()));

                lblNombreMascota.Text = ("Hola! soy" + " " + mascotaDTO.Nombre);
                var genero = mascotaDTO.Sexo.ToLower() == "m" ? "Masculino" : "Femenino";
                lblTexto.Text = ("Soy un" + " " + mascotaDTO.Especie + " de Raza" + " " + mascotaDTO.Raza + "; Y soy de Sexo" + " " + genero + " . Naci el" + " " + mascotaDTO.Fecha_nacimiento.ToString("dd/MM/yyyy") + " y mi dueño se llama" + " " + mascotaDTO.Usuarios.Nombres + " " + mascotaDTO.Usuarios.Apellidos);
                CargarGrilla();
            }
           
        }

      
        protected void gvdListaDetalle_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow fila = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            int indice = fila.RowIndex;

            if (e.CommandName == "Ver")
            {
                Session["idDetalleHistoriaSelect"] = gvdListaDetalle.Rows[indice].Cells[0].Text;
                Response.Redirect("VerDetalleHistoria.aspx");
            }
        }

        protected void btnAgregarDetalle_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrearDetalleHistoria.aspx");
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("BusquedaUsuarioDoctor.aspx");
        }

        protected void CargarGrilla()
        {
            DetalleHistoriaDAO detalleHistoriaDAO = new DetalleHistoriaDAO();
            gvdListaDetalle.DataSource = detalleHistoriaDAO.ConsultaDetallesIdMascota(int.Parse(Session["idMascotaEscogidaDoctor"].ToString())).ToList();
            gvdListaDetalle.DataBind();
        }
    }

}