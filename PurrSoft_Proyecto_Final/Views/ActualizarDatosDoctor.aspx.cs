using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurrSoft_Proyecto_Final.Views
{
    public partial class ActualizarDatosDoctor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UsuarioDAO usuarioDAO = new UsuarioDAO();
                Usuarios usuarioDTO = usuarioDAO.ConsultaPorDocumento((Session["tipoDocumentoLogin"].ToString()), (int.Parse(Session["numeroDocumentoLogin"].ToString())));
                imgPerfilActualizarDoctor.ImageUrl = usuarioDTO.Imagen;
                txtNombreDoctor.Text = usuarioDTO.Nombres;
                txtApellidosDoctor.Text = usuarioDTO.Apellidos;
                txtRolDoctor.Text = usuarioDTO.Roles.Descripcion;
                txtTelefonoDoctor.Text = usuarioDTO.Telefono.ToString();
                txtDireccionDoctor.Text = usuarioDTO.Direccion;
                txtEmailDoctor.Text = usuarioDTO.Email;
                ddlCiudadDoctor.SelectedValue = usuarioDTO.Ciudades.Nombre_ciudad;
                txtPasswordDoctor.Text = usuarioDTO.Password_u;
                txtImagenDoctor.Text = usuarioDTO.Imagen;
                txtIdRol.Text = usuarioDTO.ID_rol.ToString();
            }
           

        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            Usuarios usuarioDTO = new Usuarios();

            usuarioDTO.Tipo_documento = Session["tipoDocumentoLogin"].ToString();
            usuarioDTO.Numero_doc = int.Parse(Session["numeroDocumentoLogin"].ToString());
            usuarioDTO.ID_rol = int.Parse(txtIdRol.Text);
            usuarioDTO.Nombres = txtNombreDoctor.Text;
            usuarioDTO.Apellidos = txtApellidosDoctor.Text;
            usuarioDTO.Telefono = int.Parse(txtTelefonoDoctor.Text);
            usuarioDTO.Direccion = txtDireccionDoctor.Text;
            usuarioDTO.Email = txtEmailDoctor.Text;
            usuarioDTO.ID_ciudad = ddlCiudadDoctor.SelectedIndex + 1;
            usuarioDTO.Password_u = txtPasswordDoctor.Text;
            usuarioDTO.Imagen = txtImagenDoctor.Text;

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
            Response.Redirect("PerfilDoctor.aspx");
        }
    }
}