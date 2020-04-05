using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurrSoft_Proyecto_Final.Views
{
	public partial class PerfilAdmin : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				CargarGrillaUsuarios();
				UsuarioDAO usuarioDAO = new UsuarioDAO();
				Usuarios usuariosDTO = usuarioDAO.ConsultaPorDocumento((Session["tipoDocumentoLogin"].ToString()), (int.Parse(Session["numeroDocumentoLogin"].ToString())));
				lblNombrePerfil.Text = usuariosDTO.Nombres;
				lblRol.Text = usuariosDTO.Roles.Descripcion;
				imgFotoPerfilAdmin.ImageUrl = usuariosDTO.Imagen;

			}



		}

		protected void btnActualizar_Click(object sender, EventArgs e) {

			Response.Redirect("ActualizarDatosAdmin.aspx");
		}



		protected void gvdListaUsuarios_RowCommand(object sender, GridViewCommandEventArgs e)
		{
			GridViewRow fila = (GridViewRow)((Control)e.CommandSource).NamingContainer;
			int indice = fila.RowIndex;

			if (e.CommandName == "Ver")
			{
				Session["numeroDocUsuarioVerPerfil"] = gvdListaUsuarios.Rows[indice].Cells[0].Text;
				Session["TipodocUsuarioVerPerfil"] = gvdListaUsuarios.Rows[indice].Cells[1].Text;
				Response.Redirect("VerDatosUsuarioAdmin.aspx");
			}
			if (e.CommandName == "Actualizar")
			{
				Session["numeroDocUsuarioActualizarPerfil"] = gvdListaUsuarios.Rows[indice].Cells[0].Text;
				Session["TipodocUsuarioActualizarPerfil"] = gvdListaUsuarios.Rows[indice].Cells[1].Text;
				Response.Redirect("ActualizarDatosUsuarioAdmin.aspx");
			}
			
		}

		protected void CargarGrillaUsuarios()
		{
			UsuarioDAO usuarioDAO = new UsuarioDAO();
			gvdListaUsuarios.DataSource = usuarioDAO.ConsultaTodos().ToList();
			gvdListaUsuarios.DataBind();
		}

		protected void btnCrear_Click(object sender, EventArgs e)
		{
			Response.Redirect("CrearUsuarioAdmin.aspx");
		}

		protected void btnBuscarUsuario_Click(object sender, EventArgs e)
		{
			Session["tipoDocBusquedaPerfilAdmin"]= ddlTipoDocumento.Text;
			Session["numeroDocBusquedaPerfilAdmin"] = int.Parse(txtNumeroDoc.Text);

			try
			{
				UsuarioDAO usuarioDAO = new UsuarioDAO();
				Usuarios usuarioDTO = usuarioDAO.ConsultaPorDocumento(Session["tipoDocBusquedaPerfilAdmin"].ToString(), int.Parse(Session["numeroDocBusquedaPerfilAdmin"].ToString()));

				if (usuarioDTO != null)
				{
					Session["usuarioBuscadoAdmin"] = usuarioDTO;
					Response.Redirect("BusquedaUsuarioAdmin.aspx");
				}
				else
				{
					ClientScript.RegisterStartupScript(this.GetType(), "alarm", "search_fail_modal()", true);
				}


			}
			catch (Exception ex)
			{
				Console.WriteLine(ex.Message);

				ClientScript.RegisterStartupScript(this.GetType(), "alarm", "search_fail_modal()", true);
			}
		}
	}
}