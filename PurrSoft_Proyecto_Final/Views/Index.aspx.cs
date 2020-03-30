using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurrSoft_Proyecto_Final
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {


            string tipoDocumento, password;
            int numeroDocumento;

            if (ddlTipoDoc.Text == "Seleccionar" || txtNumeroDocumento == null || txtPassword == null)
            {
                Response.Write("<script> alert('No pudo ingresar') </script>");
            }
            else
            {

                tipoDocumento = ddlTipoDoc.Text;
                numeroDocumento = int.Parse(txtNumeroDocumento.Text);
                password = txtPassword.Text;

                UsuarioDAO usuarioDAO = new UsuarioDAO();
                Usuarios usuarioLogin = usuarioDAO.Login(tipoDocumento, numeroDocumento, password);

                if (usuarioLogin.Numero_doc == 0)
                {
                    Response.Write("<script> alert('El Usuario NO esta registrado') </script>");
                }
                else
                {

                    Session["numeroDocumentoLogin"] = usuarioLogin.Numero_doc;
                    Session["tipoDocumentoLogin"] = usuarioLogin.Tipo_documento;

                    if (usuarioLogin.ID_rol == 1)
                    {
                        Response.Redirect("PerfilAdmin.aspx");
                    }
                    if (usuarioLogin.ID_rol == 2)
                    {
                        Response.Redirect("PerfilDoctor.aspx");
                    }
                    if (usuarioLogin.ID_rol == 3)
                    {
                        Response.Redirect("PerfilUsuario.aspx");
                    }
                }
            }
        }
    }
}