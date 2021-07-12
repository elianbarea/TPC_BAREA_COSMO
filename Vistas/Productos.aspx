<%@ Page Title="Productos" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="Vistas.Productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



     <div class="container mt-4">
    <div class="row ">
    <% foreach (Dominio.Producto item in lista)
       {
           %>
     
       
   <div class="col-4 mt-3 d-flex align-items-stretch">
     
   <div class="card" style="width: 18rem;">
       <div class="card-header text-center"> <img src="<%=item.UrlImagen %>"  class=" w-50 " /> </div>
  <div class="card-body ">

    <h5 class="card-title"><%=item.Nombre %></h5>
    <p class="card-text"><%=item.Descripion %></p>
      <p class="card-text">$<%=item.Precio %></p>

  </div>      
    <div class="card-footer text-center">
    <a href="#" class="btn btn-primary">Ver producto</a>
    </div>
</div>
         
    </div>
     
    <%} %>
      </div>
         </div>   


</asp:Content>


