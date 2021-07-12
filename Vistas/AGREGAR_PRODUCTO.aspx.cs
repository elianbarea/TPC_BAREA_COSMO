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
    public partial class AGREGAR_PRODUCTO : System.Web.UI.Page
    {
        public Producto producto;
        public List<Marca> marca;
        public List<Categoria> categorias;
        public MarcaNegocio marcanegocio = new MarcaNegocio();
        public CategoriaNegocio catego = new CategoriaNegocio();
        protected void Page_Load(object sender, EventArgs e)
        {
            try {
                ProductoNegocio nego = new ProductoNegocio();


                int indexcatego;
                int indexmarca;

                int id = int.Parse(Request.QueryString["id"]);

                ///cargamos lista
                List<Producto> lista = new List<Producto>();
                lista = nego.listar();
                producto = lista.Find(i => i.Id == id);
                ///

                if (!IsPostBack) {

                    // rellena los campos de txt
                    txtnombre.Text = producto.Nombre;
                    txtDesc.Text = producto.Descripion;
                    txtPrecio.Text = Convert.ToString(producto.Precio);
                    txtStock.Text = Convert.ToString(producto.stock);
                    txtURL.Text = producto.UrlImagen;
                    ///



                    marca = marcanegocio.listar_marca();
                    indexmarca = marca.FindIndex(x => x.IDmarca == producto.Marca.IDmarca);
                    DropDownList3.DataSource = marca;
                    DropDownList3.SelectedIndex = indexmarca;
                    DropDownList3.DataBind();

                    categorias = catego.listar_Categoria();
                    indexcatego = categorias.FindIndex(d => d.IDcategoria == producto.Categoria.IDcategoria);
                    DropDownList4.DataSource = categorias;
                    DropDownList4.SelectedIndex = indexcatego;
                    DropDownList4.DataBind();
                }

            }
            catch (Exception) {

                Response.Redirect("ERROR-aspx");
            }



        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            ProductoNegocio productomodificado = new ProductoNegocio();


            Producto AGREGAR = new Producto();
            marca = marcanegocio.listar_marca();
            categorias = catego.listar_Categoria();




            var id = Request.QueryString["id"];


            if (id != null) {
                AGREGAR.Id = Convert.ToInt32(id);
                AGREGAR.Nombre = txtnombre.Text;
                AGREGAR.Descripion = txtDesc.Text;
                if (txtEstado.Text == "1") {
                    AGREGAR.estado = true;
                }
                else { AGREGAR.estado = false; }
                AGREGAR.Precio = Convert.ToDecimal(txtPrecio.Text);
                AGREGAR.stock = int.Parse(txtStock.Text);
                AGREGAR.Marca = marca.Find(c => c.Nombre == DropDownList3.SelectedValue);
                AGREGAR.Categoria = categorias.Find(h => h.Nombre == DropDownList4.SelectedValue);
                AGREGAR.UrlImagen = txtURL.Text;

                productomodificado.agregar_producto(AGREGAR);
            }
            Response.Redirect("ABML_PRODUCTO");
        }
    }
}