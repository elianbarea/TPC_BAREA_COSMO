using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace Vistas
{
    public partial class About : Page
    {
        public List<Producto> lista = new List<Producto>();
        protected void Page_Load(object sender, EventArgs e)
        {
        ProductoNegocio nego = new ProductoNegocio();

            lista = nego.listar();
             
        }
    }
}