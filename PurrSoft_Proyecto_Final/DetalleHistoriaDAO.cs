using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PurrSoft_Proyecto_Final
{
    public class DetalleHistoriaDAO
    {
        ORMDataContext bd = new ORMDataContext();

        public string RegistrarDetalle(Detalle_historia detalle)
        {
            try
            {
                bd.Detalle_historia.InsertOnSubmit(detalle);
                bd.SubmitChanges();
                return "Se registro la informacion correctamente";

            }
            catch (Exception ex)
            {
                return "No se pudieron guardar los cambios" + ex.Message;

            }


        }

        public List<Detalle_historia> ConsultaDetalleId(int idMascota)
        {
            List<Detalle_historia> detalle_Historias = new List<Detalle_historia>();
            var consultaDetalle = (from d in bd.Detalle_historia where d.ID_mascota == idMascota select d);

            foreach (var item in consultaDetalle)
            {
                Detalle_historia detalle = new Detalle_historia ();
                detalle.ID_detalle_historia = item.ID_detalle_historia;
                detalle.ID_mascota = item.ID_mascota;
                detalle.Nombre_doctor = item.Nombre_doctor;
                detalle.Motivo_consulta = item.Motivo_consulta;
                detalle.Descripcion_caso = item.Descripcion_caso;
                detalle.Antecedentes = item.Antecedentes;
                detalle.Valoracion_resultado = item.Valoracion_resultado;
                detalle.Prescripcion_medica = item.Prescripcion_medica;
                detalle.Fecha_consulta_medica = item.Fecha_consulta_medica;
                detalle.Fecha_proxima_consulta = item.Fecha_proxima_consulta;
         
                detalle_Historias.Add(detalle);
            }

            return detalle_Historias;
        }
    }
}