using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PurrSoft_Proyecto_Final
{
    public class UsuarioDAO
    {
        ORMDataContext bd = new ORMDataContext();

        public string RegistrarUsuario(Usuarios usuario)
        {
            try
            {
                bd.Usuarios.InsertOnSubmit(usuario);
                bd.SubmitChanges();
                return "Se registro un usuario exitosamente";
            }
            catch (Exception ex)
            {
                return "No se pudo registrar el usuario" + ex.Message;

            }

        }

        public List<Usuarios> ConsultaTodos()
        {

            List<Usuarios> listaUsuarios = new List<Usuarios>();
            var consultaUsuarios = from u in bd.Usuarios select u;
            foreach (var obj in consultaUsuarios)
            {
                Usuarios usuario = new Usuarios();
                usuario.Numero_doc = obj.Numero_doc;
                usuario.Tipo_documento = obj.Tipo_documento;
                usuario.ID_rol = obj.ID_rol;
                usuario.Nombres = obj.Nombres;
                usuario.Apellidos = obj.Apellidos;
                usuario.Direccion = obj.Direccion;
                usuario.Telefono = obj.Telefono;
                usuario.Email = obj.Email;
                usuario.Password_u = obj.Password_u;
                usuario.Imagen = obj.Imagen;

                listaUsuarios.Add(usuario);
            }
            return listaUsuarios;
        }

        public Usuarios ConsultaPorDocumento(string tipo_doc, int numero_documento)
        {

            var consultaPorID = (from u in bd.Usuarios where u.Tipo_documento == tipo_doc && u.Numero_doc == numero_documento select u).First();
            return consultaPorID;
        }

        public string ActualizarUsuario(Usuarios usuario)
        {
            try
            {
                var buscarUsuario = (from u in bd.Usuarios where u.Tipo_documento == usuario.Tipo_documento && u.Numero_doc == usuario.Numero_doc select u).First();
                buscarUsuario.Numero_doc = usuario.Numero_doc;
                buscarUsuario.Tipo_documento = usuario.Tipo_documento;
                buscarUsuario.ID_rol = usuario.ID_rol;
                buscarUsuario.Nombres = usuario.Nombres;
                buscarUsuario.Apellidos = usuario.Apellidos;
                buscarUsuario.Direccion = usuario.Direccion;
                buscarUsuario.Telefono = usuario.Telefono;
                buscarUsuario.Email = usuario.Email;
                buscarUsuario.Password_u = usuario.Password_u;
                buscarUsuario.Imagen = usuario.Imagen;

                bd.SubmitChanges();
                return "Se actualizo correctamente";
            }
            catch (Exception ex)
            {
                return "No se pudo actualizar" + ex.Message;

            }

        }
        public Usuarios Login(string Tipo_doc, int numero_documento, string password)
        {

            try
            {
                var Consulta = (from u in bd.Usuarios where u.Tipo_documento == Tipo_doc && u.Numero_doc == numero_documento && u.Password_u == password select u).First();
                return Consulta;
            }

            catch (Exception)
            {
                return new Usuarios();
            }

        }







    }
}