<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="Vistas.Registrarse" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container"> 
    <div style="text-align:center;width:100%;height:100%">
<div style="justify-content:center;" >

      <h5 style="">Nombre de usuario</h5>
    <input class=" mb-4" type="text" id="Txtnombre" placeholder="" style="width:300px"/>
            
       <h5 style="">Correo electronico</h5>
    <input class="mb-4" type="text" id="txtcorreo" style="width:300px" placeholder="fulanito@gmail..."/>
            
       <h5 style="">Direccion</h5>
    <input class="mb-4" type="text" id="Txtdireccion" placeholder="" style="width:300px"/>
           
       <h5 style="">Numero de telefono</h5>
    <input class="mb-4" type="number" id="Txttelefono" placeholder="" style="width:300px"/>
           
            <h5 style="">Contraseña</h5>
    <input class="mb-4" type="password" id="TxtContraseña" placeholder="" style="width:300px"/>
            <br />
    <asp:CheckBox ID="ckbrecordar" runat="server" Text="Teminos y condiciones" />
            <br />
    <asp:Button class="mb-4; btn-dark" ID="Btniniciar" runat="server" Text="Registrarse" />
         
            

</div>
        </div>
</div>  
</asp:Content>
