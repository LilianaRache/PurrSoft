using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurrSoft_Proyecto_Final.Views
{
    public partial class CrearMascotaAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            Usuarios usuarioDTO = usuarioDAO.ConsultaPorDocumento(Session["tipoDocBusquedaPerfilAdmin"].ToString(), int.Parse(Session["numeroDocBusquedaPerfilAdmin"].ToString()));
            txtTipoDoc.Text = usuarioDTO.Tipo_documento;
            txtNumeroDoc.Text = usuarioDTO.Numero_doc.ToString();
        }


        protected void btnCrear_Click(object sender, EventArgs e)
        {
            Mascotas mascotaDTO = new Mascotas();
            MascotaDAO mascotaDAO = new MascotaDAO();

            mascotaDTO.Tipo_documento_usuario = txtTipoDoc.Text;
            mascotaDTO.Cedula_usuario = int.Parse(txtNumeroDoc.Text);
            mascotaDTO.Nombre = txtNombre.Text;
            mascotaDTO.Raza = txtRaza.Text;
            mascotaDTO.Especie = txtEspecie.Text;
            mascotaDTO.Color = txtColor.Text;
            mascotaDTO.Sexo = txtSexo.Text;
            mascotaDTO.Señas_particulares = txtSeñas.Text;
            mascotaDTO.Fecha_nacimiento = ClFechaNacimiento.SelectedDate;
            if (rbEstadoMascota.SelectedItem.Value.ToString() == "Activo")
            {
                mascotaDTO.ID_estado_mascota = 1;
            }
            else
            {
                mascotaDTO.ID_estado_mascota = 2;
            }
            //Falta fecha de nacimiento y estado

            bool registrado = mascotaDAO.RegistrarMascotas(mascotaDTO);
            if (registrado == true)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alarm", "create_success_modal()", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alarm", "create_fail_modal()", true);

            }
            Response.Redirect("BusquedaUsuarioAdmin.aspx");

        }
    }
}