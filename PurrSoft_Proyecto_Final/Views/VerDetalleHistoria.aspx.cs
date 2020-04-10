using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurrSoft_Proyecto_Final.Views
{
    public partial class VerDetalleHistoria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MascotaDAO mascotaDAO = new MascotaDAO();
                Mascotas mascotaDTO =mascotaDAO.ConsultaPorId(int.Parse(Session["idMascotaEscogidaDoctor"].ToString()));

                lblNombreMascota.Text = mascotaDTO.Nombre;
                lblRaza.Text = mascotaDTO.Raza;

                if (mascotaDTO.Especie == "Perro")
                {
                    imgFotoMascota.ImageUrl = "~/Images/Perro_Perfil.jpg";

                }
                else if (mascotaDTO.Especie == "Gato")
                {
                    imgFotoMascota.ImageUrl = "~/Images/Perfil_gato.jpg";
                }
                else if (mascotaDTO.Especie == "Hamster")
                {
                    imgFotoMascota.ImageUrl = "~/Images/Raton_Perfil.jpg";
                }
                else
                {
                    imgFotoMascota.ImageUrl = "~/Images/Perfil_Otras mascotas.jpg";
                }

                DetalleHistoriaDAO detalleHistoriaDAO = new DetalleHistoriaDAO();
                Detalle_historia detalle_HistoriaDTO = detalleHistoriaDAO.ConsultarDetalle(int.Parse(Session["idDetalleHistoriaSelect"].ToString()));

                lblNombreDoctor.Text = detalle_HistoriaDTO.Nombre_doctor;
                lblMotivoConsulta.Text = detalle_HistoriaDTO.Motivo_consulta;
                lblDescripcionCaso.Text = detalle_HistoriaDTO.Descripcion_caso;
                lblAntecedentes.Text = detalle_HistoriaDTO.Antecedentes;
                lblValoracion.Text = detalle_HistoriaDTO.Valoracion_resultado;
                lblPrescripcion.Text = detalle_HistoriaDTO.Prescripcion_medica;
                lblFechaConsulta.Text = detalle_HistoriaDTO.Fecha_consulta_medica.ToShortDateString();
                lblProximaConsulta.Text = detalle_HistoriaDTO.Fecha_proxima_consulta.ToString();
            }

        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("HistoriasClinicas.aspx");
        }

        protected void bntRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("HistoriasClinicas.aspx");
        }
    }
}