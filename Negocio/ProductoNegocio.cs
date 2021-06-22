﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.SqlTypes;
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
                datos.setearConsulta("SELECT * from Articulos");
                datos.EjecutarLectura();
               
                ///realiza una lectura de la tablita(que es lector)
                while (datos.lector.Read())
                {
                    Producto aux = new Producto();
                    aux.UrlImagen = (string)datos.lector["Imagen"];
                    aux.Nombre = (string)datos.lector["Nombre"];
                    aux.Descripion = (string)datos.lector["Descripcion"];
                    aux.Precio = datos.lector.GetSqlMoney(5);

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
