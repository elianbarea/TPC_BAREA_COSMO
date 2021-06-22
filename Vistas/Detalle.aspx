<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="Vistas.Detalle" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Producto seleccionado</h1>


     
        <div class="container">
        <!--CONTENEDOR DE PRODUCTOS -->
        <div class="row align-items-center">

            
            <div class="col-7">
                <div class="card mt-4">
                    <p>imagen</p>
                    <div class="card-body">
                        
                        
                    </div>
                </div>
            </div>

     
    
              <div class="col"  >
                <div class="card mt-3">
                    <div class="card-body" style="height: 500px">
                        <h3>Nombre</h3>
                     

                        <p>  Marca</p>
                        <p>Precio</p>
                        
                            <button class="btn-danger"> 
                                <a class="nav-link fs-7" style="color:black;" href="#">
                                 Agregar a carrito</a>
                                 </button>
                       
                        
                    </div>
                </div>
            </div>

                            <hr>
                        <div class="container">
            <div class="row justify-content-center">
                <div class="col-4">
           <p>Descripcion</p>
                </div>
            </div>
        </div>
</div>

</asp:Content>
