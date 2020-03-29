using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurrSoft_Proyecto_Final.Views
{
    public partial class VerInfoMascotaAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MascotaDAO mascotaDAO = new MascotaDAO();
            Mascotas mascotaDTO = mascotaDAO.ConsultaPorId(int.Parse(Session["idMascotaVer"].ToString()));
            txtNombreMascota.Text = mascotaDTO.Nombre.ToString();
            txtEspecieMascota.Text = mascotaDTO.Especie.ToString();
            txtRazaMascota.Text = mascotaDTO.Raza.ToString();
            txtColorMascota.Text = mascotaDTO.Color.ToString();
            txtSexoMascota.Text = mascotaDTO.Sexo.ToString();
            txtSeñasParticulares.Text = mascotaDTO.Señas_particulares.ToString();
            txtFechaNacimiento.Text = mascotaDTO.Fecha_nacimiento.ToString();
            txtEstado.Text = mascotaDTO.Estados.Descripcion;

        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("BusquedaUsuarioAdmin.aspx");
        }
    }
}