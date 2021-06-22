using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Producto
    {

        public int Id { get; set; }
        public string Codigo { get; set; }
        public string Nombre { get; set; }
        public string Descripion { get; set; }
        public string Marca { get; set; }
        public string UrlImagen { get; set; }
        public int Precio { get; set; }

    }
}
