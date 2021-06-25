<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="Vistas.Registrarse" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
       
    <div style="text-align:center;width:100%;height:100%">
<div style="justify-content:center;" >

      <h5 style="">Nombre de usuario</h5>
    <input class="mt-4" type="text" id="Txtnombre" placeholder="" style="width:300px"/>
            <br />
       <h5 style="">Correo electronico</h5>
    <input class="mt-4" type="text" id="txtcorreo" style="width:300px" placeholder="fulanito@gmail..."/>
            <br />
       <h5 style="">Direccion</h5>
    <input class="mt-4" type="text" id="Txtdireccion" placeholder="" style="width:300px"/>
            <br />
       <h5 style="">Numero de telefono</h5>
    <input class="mt-4" type="text" id="Txttelefono" placeholder="" style="width:300px"/>
            <br />
            <h5 style="">Contraseña</h5>
    <input class="mt-4" type="text" id="TxtContraseña" placeholder="" style="width:300px"/>
            <br />
    <asp:CheckBox ID="ckbrecordar" runat="server" Text="Teminos y condiciones" />
            <br />
    <asp:Button class="mt-4; btn-dark" ID="Btniniciar" runat="server" Text="Registrarse" />
         
            

</div>
        </div>

</asp:Content>
