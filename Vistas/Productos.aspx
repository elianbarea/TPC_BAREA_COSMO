<%@ Page Title="Productos" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="Vistas.Productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



     <div class="container mt-4">
    <div class="row align-items-center">
    <% foreach (Dominio.Producto item in lista)
       {
           %>
     
<%--  <div class="card m-lg-3" style="width: 18rem;">
  <img src="<%=item.UrlImagen %>" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>--%>

   <div class="col-4">
     
   <div class="card" style="width: 18rem;">
       <div class="card-header text-center"> <img src="<%=item.UrlImagen %>" height="100" width="100"/> </div>
  <div class="card-body">

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


