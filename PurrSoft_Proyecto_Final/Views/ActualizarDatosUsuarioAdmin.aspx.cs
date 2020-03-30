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

                txtNombre.Text = usuarioDTO.Nombres.ToString();
                txtApellidos.Text = usuarioDTO.Apellidos.ToString();
                txtRol.Text = usuarioDTO.Roles.Descripcion.ToString();
                txtTelefono.Text = usuarioDTO.Telefono.ToString();
                txtDireccion.Text = usuarioDTO.Direccion.ToString();
                txtEmail.Text = usuarioDTO.Email.ToString();
                txtCiudad.Text = usuarioDTO.Ciudades.Nombre_ciudad.ToString();
                txtPassword.Text = usuarioDTO.Password_u.ToString();
                imgPerfilActualizar.ImageUrl = usuarioDTO.Imagen.ToString();

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
                Response.Write("<script> alert('Se actualizo correctamente') </script>");
            }
            else
            {
                Response.Write("<script> alert('No se pudo actualizar correctamente') </script>");
            }

            Response.Redirect("PerfilAdmin.aspx");


        }
    }
}