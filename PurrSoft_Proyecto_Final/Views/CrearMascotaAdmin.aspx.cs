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

        }


        protected void btnCrear_Click(object sender, EventArgs e)
        {
            Mascotas mascotaDTO = new Mascotas();
            MascotaDAO mascotaDAO = new MascotaDAO();

            mascotaDTO.Tipo_documento_usuario = ddlTipoDoc.Text;
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
            lblMensaje.Text = mascotaDAO.RegistrarMascotas(mascotaDTO);
            Response.Redirect("BusquedaUsuarioAdmin.aspx");
        }
    }
}