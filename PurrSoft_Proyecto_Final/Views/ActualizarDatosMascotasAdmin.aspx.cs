using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurrSoft_Proyecto_Final.Views
{
    public partial class FormularioMascotas_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
               
                MascotaDAO mascotaDAO = new MascotaDAO();
                Mascotas mascotaDTO = mascotaDAO.ConsultaPorId(int.Parse(Session["idMascotaActualizar"].ToString()));
                txtNombreMascota.Text = mascotaDTO.Nombre;
                txtEspecie.Text = mascotaDTO.Especie;
                txtRazaMascota.Text = mascotaDTO.Raza;
                txtColorMascota.Text = mascotaDTO.Color;
                ddlSexoMascota.SelectedValue = mascotaDTO.Sexo; 
                ClFechaNacimiento.SelectedDate =(DateTime) mascotaDTO.Fecha_nacimiento;
                txtSeñasMascota.Text = mascotaDTO.Señas_particulares;
                rbEstadoMascota.SelectedIndex = mascotaDTO.ID_estado_mascota == 1 ? 0 : 1;
     
            }

        }

        
        protected void btnActualizar_Click(object sender, EventArgs e)
        {

            MascotaDAO mascotaDAO = new MascotaDAO();
            Mascotas mascotaDTO = new Mascotas();
            mascotaDTO.ID_mascota = (int.Parse(Session["idMascotaActualizar"].ToString()));
            mascotaDTO.Tipo_documento_usuario = (Session["tipoDocBusquedaPerfilAdmin"].ToString());
            mascotaDTO.Cedula_usuario = (int.Parse(Session["numeroDocBusquedaPerfilAdmin"].ToString()));
            mascotaDTO.Nombre = txtNombreMascota.Text;
            mascotaDTO.Especie = txtEspecie.Text;
            mascotaDTO.Raza = txtRazaMascota.Text;
            mascotaDTO.Color = txtColorMascota.Text;
            mascotaDTO.Sexo = ddlSexoMascota.SelectedValue;
            mascotaDTO.Señas_particulares = txtSeñasMascota.Text;
            mascotaDTO.Fecha_nacimiento = ClFechaNacimiento.SelectedDate;
            if (rbEstadoMascota.SelectedItem.Value.ToString() == "Activo")
            {
                mascotaDTO.ID_estado_mascota = 1;
            }
            else
            {
                mascotaDTO.ID_estado_mascota = 2;
            }

            bool resultado = mascotaDAO.ActualizarMascotas(mascotaDTO);

            if (resultado == true)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alarm", "update_success_modal()", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alarm", "update_fail_modal()", true);
            }
            
          
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("BusquedaUsuarioAdmin.aspx");
        }

       
    }
}