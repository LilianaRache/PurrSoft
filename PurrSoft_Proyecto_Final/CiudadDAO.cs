using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PurrSoft_Proyecto_Final
{
    public class CiudadDAO
    {
        ORMDataContext bd = new ORMDataContext();

        public List<Ciudades> ConsultarCiudades()
        {
            List<Ciudades> listaCiudades = new List<Ciudades>();
            var consulta = from c in bd.Ciudades select c;
            foreach (var obj in consulta)
            {
                Ciudades ciudad = new Ciudades();
                ciudad.ID_ciudad = obj.ID_ciudad;
                ciudad.Nombre_ciudad = obj.Nombre_ciudad;

                listaCiudades.Add(ciudad);
            }
            return listaCiudades;

        }

    }
}