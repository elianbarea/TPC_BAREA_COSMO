﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AGREGAR_PRODUCTO.aspx.cs" Inherits="Vistas.AGREGAR_PRODUCTO" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


     <div class="container">
<div class="row row-cols-1 row-cols-sm-2 row-cols-md-4">

    <div class="col"><div class="mb-3">
      <label for="exampleFormControlInput1" class="form-label"></label>
       <asp:TextBox runat="server" placeholder="Nombre" class="form-control" id="txtnombre" />  
</div>
</div>
<div class="col"><div class="mb-3">
      <label for="exampleFormControlInput1" class="form-label"></label> 
       <asp:TextBox runat="server" placeholder="Stock" class="form-control"  id="txtStock" />  
</div>
</div>
<div class="col"><div class="mb-3">
      <label for="exampleFormControlInput1" class="form-label"></label>
       <asp:TextBox runat="server" placeholder="Precio" class="form-control" id="txtPrecio" />  
</div>
</div>
<div class="col"><div class="mb-3">
      <label for="exampleFormControlInput1" class="form-label"></label>
       <asp:TextBox runat="server" placeholder="URL"  class="form-control" id="txtURL" />  
</div>
</div>
          <div class="col; mt-2" ><div class="mb-3">Marca
              <asp:DropDownList  ID="DropDownList1"   runat="server" class="form-control" ></asp:DropDownList>
</div>
    </div>
          <div class="col; mt-2" ><div class="mb-3">Categoria
              <asp:DropDownList  ID="DropDownList2" runat="server" class="form-control" ></asp:DropDownList>
</div>
    </div>
<div class="col"><div class="mb-3">
      <label for="exampleFormControlInput1" class="form-label"></label>
       <asp:TextBox runat="server"  Text="1" class="form-control" id="txtEstado" />  
</div>
</div>
   
<div class="col"><div class="mb-3">
      <label for="exampleFormControlInput1" class="form-label"></label>
       <asp:TextBox runat="server" placeholder="Descripcion"  class="form-control" id="txtDesc" />  
</div>
</div>
  </div>

<div class="d-grid gap-2; mt-3">
       <asp:Button Text="MODIFICAR PRODUCTO" class="btn btn-outline-success mb-5" runat="server" />
            </div>
</div>



</asp:Content>
