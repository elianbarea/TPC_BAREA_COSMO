using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Dominio;

namespace Negocio
{
   public class ProductoNegocio
    {
       public List<Producto> listar()
        {
             ///crea una lista de tipo producto
                List<Producto> lista = new List<Producto>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearConsulta("SELECT Nombre , descripcion , ImagenUrl from ARTICULOS");
                datos.EjecutarLectura();
               
                ///realiza una lectura de la tablita(que es lector)
                while (datos.lector.Read())
                {
                    Producto aux = new Producto();
                    aux.UrlImagen = (string)datos.lector["ImagenUrl"];
                    aux.Nombre = (string)datos.lector["Nombre"];
                    aux.Descripion = (string)datos.lector["Descripcion"];

                    lista.Add(aux);

                }
                    return lista;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}
