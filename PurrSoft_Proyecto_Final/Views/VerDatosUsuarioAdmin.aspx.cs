using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurrSoft_Proyecto_Final.Views
{
    public partial class VerDatosUsuarioAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            Usuarios usuarioDTO = usuarioDAO.ConsultaPorDocumento(Session["TipodocUsuarioVerPerfil"].ToString(), int.Parse(Session["numeroDocUsuarioVerPerfil"].ToString()));
            txtTipoDoc.Text = usuarioDTO.Tipo_documento;
            txtNumeroDoc.Text = usuarioDTO.Numero_doc.ToString();
            txtRol.Text = usuarioDTO.Roles.Descripcion;
            txtNombre.Text = usuarioDTO.Nombres;
            txtApellido.Text = usuarioDTO.Apellidos;
            txtTelefono.Text = usuarioDTO.Telefono.ToString();
            txtDireccion.Text = usuarioDTO.Direccion;
            txtEmail.Text = usuarioDTO.Email;
            txtCiudad.Text = usuarioDTO.Ciudades.Nombre_ciudad;
            txtPassword.Text = usuarioDTO.Password_u;
            imgImagen.ImageUrl = usuarioDTO.Imagen;

        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("PerfilAdmin.aspx");
        }
    }
}