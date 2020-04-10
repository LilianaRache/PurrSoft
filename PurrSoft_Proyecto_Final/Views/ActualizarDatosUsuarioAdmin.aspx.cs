using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurrSoft_Proyecto_Final.Views
{
    public partial class FormularioUsuarioAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                UsuarioDAO usuarioDAO = new UsuarioDAO();
                Usuarios usuarioDTO = usuarioDAO.ConsultaPorDocumento(Session["TipodocUsuarioActualizarPerfil"].ToString(), int.Parse(Session["numeroDocUsuarioActualizarPerfil"].ToString()));

                txtNombre.Text = usuarioDTO.Nombres;
                txtApellidos.Text = usuarioDTO.Apellidos;
                ddlRol.SelectedValue = usuarioDTO.Roles.Descripcion;
                txtTelefono.Text = usuarioDTO.Telefono.ToString();
                txtDireccion.Text = usuarioDTO.Direccion;
                txtEmail.Text = usuarioDTO.Email;
                ddlCiudad.SelectedValue = usuarioDTO.Ciudades.Nombre_ciudad.ToString();
                txtPassword.Text = usuarioDTO.Password_u;
                imgPerfilActualizar.ImageUrl = usuarioDTO.Imagen;
                txtImagen.Text = usuarioDTO.Imagen;

            }
           

        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            Usuarios usuarioDTO = new Usuarios();

            usuarioDTO.Tipo_documento = Session["TipodocUsuarioActualizarPerfil"].ToString();
            usuarioDTO.Numero_doc = int.Parse(Session["numeroDocUsuarioActualizarPerfil"].ToString());
            usuarioDTO.Nombres = txtNombre.Text;
            usuarioDTO.Apellidos = txtApellidos.Text;
            usuarioDTO.ID_rol = ddlRol.SelectedIndex + 1;
            usuarioDTO.Telefono = int.Parse(txtTelefono.Text);
            usuarioDTO.Direccion = txtDireccion.Text;
            usuarioDTO.Email = txtEmail.Text;
            usuarioDTO.ID_ciudad = ddlCiudad.SelectedIndex + 1;
            usuarioDTO.Password_u = txtPassword.Text;
            usuarioDTO.Imagen = txtImagen.Text;

            bool Actualizar = usuarioDAO.ActualizarUsuario(usuarioDTO);

            if (Actualizar == true)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alarm", "update_success_user_modal()", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alarm", "update_fail_user_modal()", true);
            }
         }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("PerfilAdmin.aspx");
        }
    }
}