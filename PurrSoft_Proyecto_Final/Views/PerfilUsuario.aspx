<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="PerfilUsuario.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.Perfil_Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
   
    <link href="../css/usuario.css" rel="stylesheet" />    
      
   
  <div class="container" style="margin-top:50px">
        
	<div class="nombre_u" >
<%--		<img  class="avatar_u" src="../Images/cat-widget2.jpg" alt=""/>--%>
        <asp:Image ID="imgFotoUsuario" runat="server" />
		<h1 class="user_n">
        <asp:Label ID="lblNombresUsu" runat="server" ></asp:Label></h1><br />
		<asp:Label ID="lblApellidosUsu" runat="server"></asp:Label>
    </div>
		<ul class="social_lista">
			<li>
            <asp:Label ID="lblTelefono" runat="server" Text="Label"></asp:Label>
			</li>
			<li>
                <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label> 
			</li>
			<li>
                <asp:Button ID="btnActualizar" runat="server" Text="Actualizar Mis datos" CssClass="boton_personalizado" Height="35px" Width="172px" OnClick="btnActualizar_Click" />
			</li>
		</ul>
		<div class="infromacion">
			<h3 style="text-align:center">Mis Mascotas</h3>
             <asp:GridView ID="gvdListaMascotasUsu" runat="server" AutoGenerateColumns="False" OnRowCommand="gvdListaMascotasUsu_RowCommand" style="margin-top: 0px" Width="735px">
                 <Columns>
                     <asp:BoundField DataField="ID_mascota" HeaderText="Id_Mascota" />
                     <asp:BoundField DataField="Nombre" HeaderText="Nombre de la Mascota" />
                     <asp:BoundField DataField="Especie" HeaderText="Especie" />
                     <asp:BoundField DataField="Raza" HeaderText="Raza" />
                     <asp:TemplateField HeaderText="Acciones">
                         <ItemTemplate>
                            <asp:ImageButton CommandName="Ver" ID="imgVisualizar" runat="server" ImageUrl="~/Images/ojo.png" Width="22px"/>
                         </ItemTemplate>
                     </asp:TemplateField>
                 </Columns>
            </asp:GridView>
		</div>

    <div>  
        <ul  class="nav justify-content-end">
        <li class="nav-item text-right">
          <a href="#" type="button" class="btn btn-secondary">Volver</a>
        </li>
        </ul>
          </div>

    <!--
    CSS DEL BOTON

        <style type="text/css">
  .boton_personalizado{
    text-decoration: none;
    padding: 10px;
    font-weight: 600;
    font-size: 20px;
    color: #ffffff;
    background-color: #1883ba;
    border-radius: 6px;
    border: 2px solid #0016b0;
  }
  .boton_personalizado:hover{
    color: #1883ba;
    background-color: #ffffff;
  }
</style>
-->   

</asp:Content>
