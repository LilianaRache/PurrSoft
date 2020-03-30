using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PurrSoft_Proyecto_Final
{
    public class DetalleHistoria
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

        public Detalle_historia ConsultaDetalleId(Mascotas mascota)
        {
            var consultaDetalle = (from d in bd.Detalle_historia where d.ID_mascota == mascota.ID_mascota select d).First();
            return consultaDetalle;
        }



    }
}