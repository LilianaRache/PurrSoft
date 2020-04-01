
<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="BusquedaUsuarioAdmin.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.BusquedaUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../css/BusquedaUsuarioAdmin.css" rel="stylesheet" />


        <div class="shadow overflow col-md-offset-4" style="margin-bottom:20px; margin-top:30px; width:500px; height: 366px;">
            <div class="header"></div>
            <div class="profile">
                <div class="image">
                    <asp:Image ID="imgUsuario" runat="server" />
                </div>
                <div class="name">
                    <asp:Label ID="lblNombres" runat="server" Text="Label"></asp:Label>
                 
                </div>
                <div class="nickname">
                    <asp:Label ID="lblApellidos" runat="server" Text="Label"></asp:Label>
                  
                </div>
                <div class="location">
                    <span>
                        Telefono
                        <asp:Label ID="lblTelefono" runat="server" Text="Label"></asp:Label>
                    </span>
                </div>
                <div class="bottom">
                    <span class="following ">
                       <span class="count">Correo </span>
                        <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
                    </span>
                </div>
            </div>
        </div><br /> <br />
    <div>
        <asp:Button ID="btnCrearMascota" runat="server" Text="Crear Nueva Mascota" OnClick="btnCrearMascota_Click"/>
    </div>
    <h1>Listado de Mascotas Activas</h1>
    <asp:GridView ID="gvdListaMascotas" CssClass="gridView" runat="server" AutoGenerateColumns="False" OnRowCommand="gvdListaMascotas_RowCommand" Width="967px" >
        <Columns>
            <asp:BoundField DataField="ID_mascota" HeaderText="Id_Mascota" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
            <asp:BoundField DataField="Especie" HeaderText="Especie" />
            <asp:TemplateField HeaderText="Acciones">
                <ItemTemplate> 
                    <asp:ImageButton CommandName="Ver" ID="imgVisualizar" runat="server" ImageUrl="~/Images/ojo.png" Width="22px"/>
                    <asp:ImageButton CommandName="Actualizar" ID="imgActualizar" runat="server" ImageUrl="~/Images/edit.png" Width="22px"/> 
                    <asp:ImageButton CommandName="Eliminar" ID="imgEliminar" runat="server" ImageUrl="~/Images/cancel.png" Width="22px"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView><br /><br />
    <h1>Listado de Mascotas Inactivas </h1>
    <asp:GridView ID="gvdListadoMascotasInactivas" runat="server" CssClass="gridView" Width="967px" AutoGenerateColumns="False" OnRowCommand="gvdListadoMascotasInactivas_RowCommand">
        <Columns>
            <asp:BoundField DataField="ID_mascota" HeaderText="Id_Mascota" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
            <asp:BoundField DataField="Especie" HeaderText="Especie" />
            <asp:TemplateField HeaderText="Acciones">
                  <ItemTemplate> 
                    <asp:ImageButton CommandName="Reactivar" ID="imgReactivar" runat="server" ImageUrl="~/Images/Bengala.png" Width="22px"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>

    </asp:GridView>


  


</asp:Content>


