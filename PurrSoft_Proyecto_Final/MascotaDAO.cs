using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PurrSoft_Proyecto_Final
{
    public class MascotaDAO
    {

        ORMDataContext bd = new ORMDataContext();

        public string RegistrarMascotas(Mascotas mascota)
        {
            try
            {
                bd.Mascotas.InsertOnSubmit(mascota);
                bd.SubmitChanges();
                return "La mascota se ha registrado correctamente";

            }
            catch (Exception ex)
            {
                return "No se pudo registrar la mascota" + ex.Message;

            }
        }

        public List<Mascotas> ConsultarTodos()
        {
            List<Mascotas> listaMascotas = new List<Mascotas>();
            var consulta = (from m in bd.Mascotas select m);
            foreach (var obj in consulta)
            {
                Mascotas mascota = new Mascotas();
                mascota.ID_mascota = obj.ID_mascota;
                mascota.Cedula_usuario = obj.Cedula_usuario;
                mascota.Tipo_documento_usuario = obj.Tipo_documento_usuario;
                mascota.Nombre = obj.Nombre;
                mascota.Raza = obj.Raza;
                mascota.Especie = obj.Especie;
                mascota.Color = obj.Color;
                mascota.Sexo = obj.Sexo;
                mascota.Señas_particulares = obj.Señas_particulares;
                mascota.Fecha_nacimiento = obj.Fecha_nacimiento;
                mascota.ID_estado_mascota = obj.ID_estado_mascota;

                listaMascotas.Add(mascota);
            }
            return listaMascotas;

        }

        public Mascotas ConsultaPorId(int id_mascota)
        {
            var consultaPorId = (from m in bd.Mascotas where m.ID_mascota == id_mascota select m).First();
            return consultaPorId;
        }

        public string ActualizarMascotas(Mascotas mascota)
        {
            try
            {
                var consultar = (from m in bd.Mascotas where m.ID_mascota == mascota.ID_mascota select m).First();
                consultar.ID_mascota = mascota.ID_mascota;
                consultar.Cedula_usuario = mascota.Cedula_usuario;
                consultar.Tipo_documento_usuario = mascota.Tipo_documento_usuario;
                consultar.Nombre = mascota.Nombre;
                consultar.Raza = mascota.Raza;
                consultar.Especie = mascota.Especie;
                consultar.Color = mascota.Color;
                consultar.Sexo = mascota.Sexo;
                consultar.Señas_particulares = mascota.Señas_particulares;
                consultar.Fecha_nacimiento = mascota.Fecha_nacimiento;
                consultar.ID_estado_mascota = mascota.ID_estado_mascota;
                bd.SubmitChanges();
                return "La informacion se actualizo correctamente";
            }
            catch (Exception ex)
            {
                return "No se puedo actualizar los datos" + ex.Message;
            }


        }

        public string EliminarMascota(int id)
        {
            try
            {
                var consultaPorId = (from m in bd.Mascotas where m.ID_mascota == id select m).First();
                consultaPorId.ID_estado_mascota = 2;
                bd.SubmitChanges();
                return "Se elimino correctamente";
            }
            catch (Exception ex)
            {

                return "No se pudo eliminar la mascota" + ex.Message;
            }
        }

        public List<Mascotas> ConsultarMascotasUsuario(int cedulaUsuario)
        {
            List<Mascotas> listaMascotas = new List<Mascotas>();
            var consulta = (from m in bd.Mascotas where m.Cedula_usuario == cedulaUsuario && m.ID_estado_mascota == 1 select m);
            foreach (var obj in consulta)
            {
                Mascotas mascota = new Mascotas();
                mascota.ID_mascota = obj.ID_mascota;
                mascota.Cedula_usuario = obj.Cedula_usuario;
                mascota.Tipo_documento_usuario = obj.Tipo_documento_usuario;
                mascota.Nombre = obj.Nombre;
                mascota.Raza = obj.Raza;
                mascota.Especie = obj.Especie;
                mascota.Color = obj.Color;
                mascota.Sexo = obj.Sexo;
                mascota.Señas_particulares = obj.Señas_particulares;
                mascota.Fecha_nacimiento = obj.Fecha_nacimiento;
                mascota.ID_estado_mascota = obj.ID_estado_mascota;

                listaMascotas.Add(mascota);
            }
            return listaMascotas;

        }





    }
}