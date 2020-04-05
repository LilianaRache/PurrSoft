<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="PerfilUsuario.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.Perfil_Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <link href="../css/usuario.css" rel="stylesheet" />    
      
   
  <div class="container" style="margin-top:50px">
        
	<div class="nombre_u" >
        <br />
        <asp:Image ID="Image1" runat="server" />
		<img  class="avatar_u" src="../Images/cat-widget2.jpg" alt=""/>

        <br />
		<h1 class="user_n">nombre</h1>
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
    </div>
		<ul class="social_lista">
			<li>
                <h3>Numero de identidad</h3><br />
				<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
			</li>
			<li>
                <h3>Correo</h3><br />
				<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
			</li>
			<li>
                <h3>Telefono/Celular</h3><br />
				<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
			</li>
			<li>
                <h3>Localidad</h3><br />
				<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
			</li>
                <li>
                <h3>Direccion</h3><br />
				<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
			</li>
		</ul>
		
  </div>
 
    <div>  
        <ul  class="nav justify-content-end">
        <li class="nav-item text-right">
          <a href="#" type="button" class="btn btn-secondary">Volver</a>
        </li>
        </ul>
          </div>

    <!--
    <table>
        <tr>
            <td> <asp:GridView ID="gvListaMascotas" runat="server"></asp:GridView></td>
            <td><asp:Button ID="Button1" runat="server" Text="Button" /></td>
        </tr>

    </table>
-->   

</asp:Content>
