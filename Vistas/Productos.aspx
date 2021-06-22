<%@ Page Title="Productos" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="Vistas.Productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



     <div class="container mt-4">
    <div class="row align-items-center">
    <% foreach (Dominio.Producto item in lista)
       {
           %>
     
  
    <div class="col-4">
     
   <div class="card">
  <div class="card-body">
      <img src="<%=item.UrlImagen %>" height="100" width="100"/>
    <h5 class="card-title"><%=item.Nombre %></h5>
    <p class="card-text"><%=item.Descripion %></p>
      <p class="card-text">$<%=item.Precio %></p>
    <a href="#" class="btn btn-primary">Ver producto</a>
    
  </div>
</div>
         
    </div>
         
    <%} %>
      </div>
         </div>   


</asp:Content>


