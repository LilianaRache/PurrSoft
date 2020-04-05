<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="BusquedaUsuarioDoctor.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.BusquedaUsuarioDoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../css/BusquedaUsuarioDoctor.css" rel="stylesheet" />

      <div class="shadow overflow col-md-offset-4" style="margin-bottom:20px; margin-top:30px; width:500px; height: 366px;">
            <div class="header"></div>
            <div class="profile">
               <div class="image imagen">
                    <asp:Image ID="imgUsuario" runat="server" />
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
                <div class="direccion">
                    <span class="count">Direcion: </span> 
                        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="count"></asp:Label>
                </div>
            </div>
        </div><br /> <br />

    <asp:GridView ID="GridView1" CssClass="gridView" runat="server"></asp:GridView>


</asp:Content>
