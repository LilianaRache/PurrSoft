using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurrSoft_Proyecto_Final.Views
{
    public partial class VerDetalleHistoriaUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MascotaDAO mascotaDAO = new MascotaDAO();
            Mascotas mascotaDTO = mascotaDAO.ConsultaPorId(int.Parse(Session["IdMascotaGrilladeUsuario"].ToString()));

            lblNombreMascota.Text = mascotaDTO.Nombre;
            lblRaza.Text = mascotaDTO.Raza;

            if (mascotaDTO.Especie == "Perro")
            {
                imgFotoMascota.ImageUrl = "~/Images/PerroDetalleHistoria.jpg";

            }
            else if (mascotaDTO.Especie == "Gato")
            {

            }
            else if (mascotaDTO.Especie == "Hamster")
            {

            }
            else
            {

            }

            DetalleHistoriaDAO detalleHistoriaDAO = new DetalleHistoriaDAO();
            Detalle_historia detalle_HistoriaDTO = detalleHistoriaDAO.ConsultarDetalleIdMascota(int.Parse(Session["IdMascotaGrilladeUsuario"].ToString()));

            lblNombreDoctor.Text = detalle_HistoriaDTO.Nombre_doctor;
            lblMotivoConsulta.Text = detalle_HistoriaDTO.Motivo_consulta;
            lblDescripcionCaso.Text = detalle_HistoriaDTO.Descripcion_caso;
            lblAntecedentes.Text = detalle_HistoriaDTO.Antecedentes;
            lblValoracion.Text = detalle_HistoriaDTO.Valoracion_resultado;
            lblPrescripcion.Text = detalle_HistoriaDTO.Prescripcion_medica;
            lblFechaConsulta.Text = detalle_HistoriaDTO.Fecha_consulta_medica.ToString();
            lblProximaConsulta.Text = detalle_HistoriaDTO.Fecha_proxima_consulta.ToString();
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("PerfilUsuario.aspx");
        }
    }

}