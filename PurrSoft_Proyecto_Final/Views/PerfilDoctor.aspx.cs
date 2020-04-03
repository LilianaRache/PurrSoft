using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurrSoft_Proyecto_Final.Views
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            Usuarios usuarioDTO = usuarioDAO.ConsultaPorDocumento((Session["tipoDocumentoLogin"].ToString()), (int.Parse(Session["numeroDocumentoLogin"].ToString())));

            imgAvatar.ImageUrl = usuarioDTO.Imagen;
            lblNombreDoctor.Text = usuarioDTO.Nombres;
            lblRolDoctor.Text = usuarioDTO.Roles.Descripcion;

       }

        protected void btnActuarizarDoctor_Click(object sender, EventArgs e)
        {
            Response.Redirect("ActualizarDatosDoctor.aspx");
        }

        protected void btnBuscarUsuario_Click(object sender, EventArgs e)
        {
            Session["TipoDocBuscadoDoctor"] = ddlTipoDoc.Text;
            Session["NumeroDocBuscadoDoctor"] = txtNumeroDoc.Text;
            Response.Redirect("BusquedaUsuarioDoctor.aspx");
        }
    }
}