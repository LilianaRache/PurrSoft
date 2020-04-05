using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PurrSoft_Proyecto_Final.Views
{
    public partial class CrearDetalleHistoria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            DetalleHistoriaDAO detalleHistoriaDAO = new DetalleHistoriaDAO();
            Detalle_historia detalle_HistoriaDTO = new Detalle_historia();

            detalle_HistoriaDTO.ID_mascota = int.Parse(Session["idMascotaEscogidaDoctor"].ToString());
            detalle_HistoriaDTO.Nombre_doctor = txtNombreDoctor.Text;
            detalle_HistoriaDTO.Motivo_consulta = txtMotivo.Text;
            detalle_HistoriaDTO.Descripcion_caso = txtDescripcion.Text;
            detalle_HistoriaDTO.Antecedentes = txtAntecedentes.Text;
            detalle_HistoriaDTO.Valoracion_resultado = txtValoracion.Text;
            detalle_HistoriaDTO.Prescripcion_medica = txtPrescripcion.Text;
            detalle_HistoriaDTO.Fecha_consulta_medica = clFechaConsulta.SelectedDate;
            detalle_HistoriaDTO.Fecha_proxima_consulta = clProximaConsulta.SelectedDate;

           var registrar = detalleHistoriaDAO.RegistrarDetalle(detalle_HistoriaDTO);

            if (registrar == true)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alarm", "create_success_detail_modal()", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alarm", "create_fail_detail_modal()", true);
            }
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("HistoriasClinicas.aspx");
        }
    }
}