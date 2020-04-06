﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="BusquedaUsuarioDoctor.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.BusquedaUsuarioDoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../css/BusquedaUsuarioDoctor.css" rel="stylesheet" />

      <div class="shadow overflow col-md-offset-4" style="margin-bottom:20px; margin-top:30px; width:500px; height: 366px;">
            <div class="header"></div>
            <div class="profile">
                <div class="image imagen">
                    <asp:Image ID="imgPerfilDoctor" runat="server" />
                </div>
                <div class="name nombre">
                    <asp:Label ID="lblNombres" runat="server" Text="Nombre"></asp:Label>
                </div>
                <div class="nickname apellido">
                    <asp:Label ID="lblApellidos" runat="server" Text="apellido"></asp:Label>
                </div>
                <div class="telefono">
                        <span class="count">Telefono/Celular : </span>
                        <asp:Label ID="lblTelefono" runat="server" Text="Label" CssClass="count"></asp:Label>
                </div>
                <div class="Correo">
                    <span class="count">Correo: </span> 
                        <asp:Label ID="lblEmail" runat="server" Text="Label" CssClass="count"></asp:Label>
                </div>
                <div class="bottom">
                    <span class="following ">
                        <span class="count">170</span>
                        following
                    </span>
                </div>
            </div>
        </div>
    <asp:Button ID="btnVolver" runat="server" Text="Volver" CssClass="btn btn-info" Height="49px" OnClick="btnVolver_Click" Width="115px" />

    <br /> <br />

    <asp:GridView ID="gvdListaMascotasBusquedaDoctor" CssClass="gridView" runat="server" Width="1231px" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" style="margin-left: 91px" >
        <Columns>
            <asp:BoundField DataField="ID_mascota" HeaderText="Id_Mascota"><HeaderStyle BackColor="#999999" /></asp:BoundField>
            <asp:BoundField DataField="Nombre" HeaderText="Nombre Mascota"><HeaderStyle BackColor="#999999" /></asp:BoundField>
            <asp:BoundField DataField="Especie" HeaderText="Especie"><HeaderStyle BackColor="#999999" /></asp:BoundField>
            <asp:TemplateField HeaderText="Acciones"><HeaderStyle BackColor="#999999" />
                <ItemTemplate>
                     <asp:ImageButton CommandName="Ver" ID="imgVisualizar" runat="server" ImageUrl="~/Images/ojo.png" Width="22px"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <script src="../js/sweetalert2.all.min.js"></script>
	<!-- Optional: include a polyfill for ES6 Promises for IE11 -->
	<script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

    <script src="../js/Alerts.js"></script>


</asp:Content>
