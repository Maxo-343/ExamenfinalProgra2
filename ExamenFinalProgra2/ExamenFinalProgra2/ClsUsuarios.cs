using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ExamenFinalProgra2
{
    public class ClsUsuarios
    {
        private static String Usuario { get; set; }
        private static String Clave { get; set; }
        private static String Nombre { get; set; }
        private static String Aprllido { get; set; }

        public static string GetUsuario()
        {
            return Usuario;
        }

        public static void SetUsuario(String usuario)
        {
            Usuario = usuario;
        }

        public static string GetClave()
        {
            return Clave;
        }

        public static void SetClave(String clave)
        {
            Clave = clave;
        }
    }
}