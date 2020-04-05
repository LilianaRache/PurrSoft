using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurrSoft_Proyecto_Final.Views
{
    public partial class ActualizarDatosUSUARIO : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UsuarioDAO usuarioDAO = new UsuarioDAO();
                Usuarios usuarioDTO = usuarioDAO.ConsultaPorDocumento(Session["tipoDocumentoLogin"].ToString(), (int.Parse(Session["numeroDocumentoLogin"].ToString())));

                imgPerfilActualizarUsu.ImageUrl = usuarioDTO.Imagen;
                txtNombres.Text = usuarioDTO.Nombres;
                txtApellidos.Text = usuarioDTO.Apellidos;
                txtRol.Text = usuarioDTO.ID_rol.ToString();
                txtTelefono.Text = usuarioDTO.Telefono.ToString();
                txtDireccion.Text = usuarioDTO.Direccion;
                txtEmail.Text = usuarioDTO.Email;
                ddlCiudad.SelectedValue = usuarioDTO.Ciudades.Nombre_ciudad;
                txtPassword.Text = usuarioDTO.Password_u;
                txtImagen.Text = usuarioDTO.Imagen;

            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            Usuarios usuarioDTO = new Usuarios();

            usuarioDTO.Numero_doc = int.Parse(Session["numeroDocumentoLogin"].ToString());
            usuarioDTO.Tipo_documento = Session["tipoDocumentoLogin"].ToString();
            usuarioDTO.ID_rol = int.Parse(txtRol.Text);
            usuarioDTO.Nombres = txtNombres.Text;
            usuarioDTO.Apellidos = txtApellidos.Text;
            usuarioDTO.Telefono = int.Parse(txtTelefono.Text);
            usuarioDTO.Direccion = txtDireccion.Text;
            usuarioDTO.Email = txtEmail.Text;
            usuarioDTO.ID_ciudad = ddlCiudad.SelectedIndex + 1;
            usuarioDTO.Password_u = txtPassword.Text;
            usuarioDTO.Imagen = txtImagen.Text;

            var retorno = usuarioDAO.ActualizarUsuario(usuarioDTO);
            if (retorno == true)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alarm", "update_success_user_modal() ", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alarm", "update_fail_user_modal()", true);
            }
        }

        protected void btnVolvel_Click(object sender, EventArgs e)
        {
            Response.Redirect("PerfilUsuario.aspx");
        }
    }
}