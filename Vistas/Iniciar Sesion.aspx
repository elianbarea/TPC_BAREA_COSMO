﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Iniciar Sesion.aspx.cs" Inherits="Vistas.Iniciar_Sesion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server" >
    <div style="text-align:center;width:100%;height:100%">
<div style="justify-content:center;" >

      <h5 style="">Correo electronico</h5>
    <input  type="text" id="TxtCorreo" placeholder="fulanito@gmail..." style="width:300px"/>
            <br />
            <h5 style="">Contraseña</h5>
    <input  type="text" id="TxtContraseña" placeholder="" style="width:300px"/>
            <br />
    <asp:CheckBox ID="ckbrecordar" runat="server" Text="recordar contraseña" />
            <br />
    <asp:Button ID="Btniniciar" runat="server" Text="Iniciar Sesion" />
         
            

</div>
        </div>
</asp:Content>
