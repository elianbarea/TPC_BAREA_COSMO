<%@ Page Title="Procutos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Vistas.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <div class="container">
    <div class="row align-items-center">
    <% foreach (Dominio.Producto item in lista)
       {
           %>
     
  
    <div class="col-4">
     
   <div class="card" style="width: 18rem;">
  <div class="card-body">
      <img src="<%=item.UrlImagen %>" height="20%px" width="20%px" />
    <h5 class="card-title"><%=item.Nombre %></h5>
    <p class="card-text"><%=item.Descripion %></p>
    <a href="#" class="btn btn-primary">Ver producto</a>
  </div>
</div>
         
    </div>
         
    <%} %>
      </div>
         </div>    
        
</asp:Content>
