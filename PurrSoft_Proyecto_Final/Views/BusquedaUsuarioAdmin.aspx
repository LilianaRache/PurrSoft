
<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="BusquedaUsuarioAdmin.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.BusquedaUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../css/BusquedaUsuarioAdmin1.css" rel="stylesheet" />

        <div class="shadow overflow col-md-offset-4" style="margin-bottom:50px; margin-top:12px; width:500px; height: 250px;">
            <img src="../Images/fondo29.jpg" class="header" alt="Alternate Text" />
            <div class="profile datos-perfil">
                <div class="image imagen" style="left: 54px; top: 29px; width: 140px; height: 140px">
                    <asp:Image ID="imgUsuario" runat="server" /> 
                </div>
                <div class="name nombre">
                    <asp:Label ID="lblNombres" runat="server" Text="Label"></asp:Label>
                 
                </div>
                <div class="nickname apellido">
                    <asp:Label ID="lblApellidos" runat="server" Text="Label"></asp:Label>
                  
                </div>
                <div class="telefono">
                        <span class="count">Telefono: </span> <br />
                        <asp:Label ID="lblTelefono" runat="server" Text="Label"></asp:Label>
                </div>
                <div class="bottom">
                    <span class="following correo">
                       <span class="count">Correo: </span> <br />
                        <asp:Label ID="lblEmail" runat="server" Text="Label" CssClass="correo"></asp:Label>
                    </span>
                </div>
            </div>
        </div><br /> <br />
    <div>
        <h1>Listado de Mascotas Activas </h1>
        <asp:Button ID="btnCrearMascota" CssClass="boton-mascota" runat="server" Text="Crear Nueva Mascota" OnClick="btnCrearMascota_Click" style="left: 491px; top: 330px"/>
    </div> <br />
    <asp:GridView ID="gvdListaMascotas" CssClass="gridView tabla-mascotas" runat="server" AutoGenerateColumns="False" OnRowCommand="gvdListaMascotas_RowCommand" Width="75%" >
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
    <asp:GridView ID="gvdListadoMascotasInactivas" runat="server" CssClass="gridView tabla-mascotas" Width="967px" AutoGenerateColumns="False" OnRowCommand="gvdListadoMascotasInactivas_RowCommand">
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

    <div >
        <div class="col-sm-6" style="left: 1100px; top: -70px;  width:10%;">
            <asp:Button ID="btnRegresar" runat="server" Text="Regresar" CssClass="action-button shadow animate boton-regresar" style="left: -136px; top: -585px" OnClick="btnRegresar_Click" />
        </div>  
    </div>

  <script src="../js/sweetalert2.all.min.js"></script>
	<!-- Optional: include a polyfill for ES6 Promises for IE11 -->
	<script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

    <script src="../js/Alerts.js"></script>
      <script src="../vendor/jquery/jquery.min.js"></script>
      <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</asp:Content>




