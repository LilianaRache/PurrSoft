using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurrSoft_Proyecto_Final.Views
{
    public partial class CrearUsuarioAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
           
            UsuarioDAO usuariosDAO = new UsuarioDAO();
            Usuarios usuariosDTO = new Usuarios();

            usuariosDTO.Tipo_documento = ddlTipoDocumento.Text;
            usuariosDTO.Numero_doc = int.Parse(txtNumeroDocumento.Text);
            if (ddlRol.Text == "Administrador")
            {
                usuariosDTO.ID_rol = 1;
            }
            else if (ddlRol.Text == "Medico")
            {
                usuariosDTO.ID_rol = 2;
            }
            else if (ddlRol.Text == "Usuario")
            {
                usuariosDTO.ID_rol = 3;
            }
            usuariosDTO.Nombres = txtNombre.Text;
            usuariosDTO.Apellidos = txtApellido.Text;
            usuariosDTO.Telefono = int.Parse(txtTelefono.Text);
            usuariosDTO.Direccion = txtDireccion.Text;
            usuariosDTO.Email = txtEmail.Text;
            usuariosDTO.ID_ciudad = ddlCiudad.SelectedIndex + 1;
            usuariosDTO.Password_u = txtPassword.Text;
            usuariosDTO.Imagen = txtImagen.Text;

            bool registrado = usuariosDAO.RegistrarUsuario(usuariosDTO);

            if (registrado == true)
            {
                Response.Write("<script> alert('Se registro correctamente') </script>");

            }
            else
            {
                Response.Write("<script> alert('No registro correctamente') </script>");

            }

            Response.Redirect("PerfilAdmin.aspx");







        }
    }
}