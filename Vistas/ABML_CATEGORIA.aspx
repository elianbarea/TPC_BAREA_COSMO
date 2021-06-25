﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ABML_CATEGORIA.aspx.cs" Inherits="Vistas.ABML_CATEGORIA" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <div class="row align-items-center">


            <div class="d-grid gap-2">
                <a href="#" class="btn btn-outline-success mb-5" type="button">AGREGAR MARCA</a>
            </div>

            <div class="col-12">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th>Nombre</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>



                        <tr>
                            <th scope="row">1</th>
                            <td> DISCOS DUROS  </td>
                            <td><a href="#" class="btn btn-outline-secondary  btn-sm">MODIFICAR</a> <a href="#" class="btn btn-outline-secondary  btn-sm">SUSPENDER</a> <a href="#" class="btn btn-outline-danger  btn-sm">ELIMINAR</a></td>




                        </tr>
                                                <tr>
                            <th scope="row">2</th>
                            <td> MEMORIAS RAM  </td>
                            <td><a href="#" class="btn btn-outline-secondary  btn-sm">MODIFICAR</a> <a href="#" class="btn btn-outline-secondary  btn-sm">SUSPENDER</a> <a href="#" class="btn btn-outline-danger  btn-sm">ELIMINAR</a></td>



                        </tr>

                    </tbody>
                </table>


            </div>
</asp:Content>
