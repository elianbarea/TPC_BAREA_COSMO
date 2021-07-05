using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;

namespace Vistas
{
    public partial class ABML_Modificar : System.Web.UI.Page
    {
        public Producto producto;
        public List<Marca> marca;
        public List<Categoria> categorias;
        protected void Page_Load(object sender, EventArgs e)
        {
            try {
                ProductoNegocio nego = new ProductoNegocio();
                MarcaNegocio marcanegocio = new MarcaNegocio();
                CategoriaNegocio catego = new CategoriaNegocio();

                int id = int.Parse (Request.QueryString["id"]);

                List<Producto> lista = new List<Producto>();
                lista = nego.listar();
                producto = lista.Find(x => x.Id == id);


                marca = marcanegocio.listar_marca();
                DropDownList1.DataSource = marca;
                DropDownList1.DataBind();

                categorias = catego.listar_Categoria();
                DropDownList2.DataSource = categorias;
                DropDownList2.DataBind();


            }
            catch (Exception) {

                Response.Redirect("ERROR-aspx");
            }

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            ProductoNegocio productomodificado = new ProductoNegocio();

        
                Producto auxmodificar = new Producto();
     




                auxmodificar.Nombre = txtnombre.Text;
                auxmodificar.Descripion = txtDesc.Text;
                if (txtEstado.Text == "1") {
                    auxmodificar.estado = true;
                }
                else { auxmodificar.estado = false; }
                auxmodificar.Precio = Convert.ToDecimal(txtPrecio.Text);
                auxmodificar.stock = int.Parse(txtStock.Text);
                auxmodificar.Marca = marca.Find(x => x.Nombre == DropDownList1.SelectedValue);
                auxmodificar.Categoria = categorias.Find(x => x.Nombre == DropDownList2.SelectedValue);
                auxmodificar.UrlImagen = txtURL.Text;

                productomodificado.modificar_producto(auxmodificar);




        }
    }
}