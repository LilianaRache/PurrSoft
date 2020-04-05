using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurrSoft_Proyecto_Final.Views
{
    public partial class ActualizarDatosAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UsuarioDAO usuarioDAO = new UsuarioDAO();
                Usuarios usuarioDTO = usuarioDAO.ConsultaPorDocumento((Session["tipoDocumentoLogin"].ToString()), (int.Parse(Session["numeroDocumentoLogin"].ToString())));

                imgPerfilActualizar.ImageUrl = usuarioDTO.Imagen;
                txtNombreP.Text = usuarioDTO.Nombres;
                txtApellidosP.Text = usuarioDTO.Apellidos;
                txtRolP.Text = usuarioDTO.Roles.Descripcion;
                txtIdRol.Text = usuarioDTO.Roles.ID_rol.ToString();
                txtTelefonoP.Text = usuarioDTO.Telefono.ToString();
                txtDireccionP.Text = usuarioDTO.Direccion;
                txtEmailP.Text = usuarioDTO.Email;
                ddlCiudadP.SelectedValue = usuarioDTO.Ciudades.Nombre_ciudad;
                txtPasswordP.Text = usuarioDTO.Password_u;
                txtImagenP.Text = usuarioDTO.Imagen;
            }
           

        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            Usuarios usuarioDTO = new Usuarios();

            usuarioDTO.Numero_doc = int.Parse(Session["numeroDocumentoLogin"].ToString());
            usuarioDTO.Tipo_documento = Session["tipoDocumentoLogin"].ToString();
            usuarioDTO.ID_rol = int.Parse(txtIdRol.Text);
            usuarioDTO.Nombres = txtNombreP.Text;
            usuarioDTO.Apellidos = txtApellidosP.Text;
            usuarioDTO.Telefono = int.Parse(txtTelefonoP.Text);
            usuarioDTO.Direccion = txtDireccionP.Text;
            usuarioDTO.Email = txtEmailP.Text;
            usuarioDTO.ID_ciudad = ddlCiudadP.SelectedIndex + 1;
            usuarioDTO.Password_u = txtPasswordP.Text;
            usuarioDTO.Imagen = txtImagenP.Text;

            bool retorno = usuarioDAO.ActualizarUsuario(usuarioDTO);

            if (retorno == true)
            {
                
                ClientScript.RegisterStartupScript(this.GetType(), "alarm", "update_success_user_modal()", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alarm", "update_fail_user_modal()", true);
            }
        }

        protected void btnVolvel_Click(object sender, EventArgs e)
        {
            Response.Redirect("PerfilAdmin.aspx");
        }
    }
}