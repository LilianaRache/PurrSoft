<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="PerfilUsuario.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.Perfil_Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <img src="../Images/Icono_usuario.jpg" align="left">
   
    <link href="../css/usuario.css" rel="stylesheet" />    
      
   
     <header>
	<div class="nombre_u" >
		<img  class="avatar_u" src="../Images/cat-widget2.jpg" alt=""/>
		<h1 class="user_n">Castor</h1>
    </div>
		<ul class="social_lista">
			<li>
				<a href="gmail.com">Correo@gmail.com</a>
			</li>
			<li>
				<a href="gmail.com">cedula</a><br>
			</li>
			<li>
				<a href="gmail.com">telefono</a>
			</li>
			<li>
				<a href="gmail.com">Direccion</a>
			</li>
		</ul>
		<div class="infromacion">
			<h3>Acerca de mi</h3>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam voluptas non pariatur commodi quibusdam, inventore necessitatibus quidem nihil ut sunt, iusto, quaerat sit debitis, asperiores iste nisi cum itaque dolor.</p>
		</div>
   </header>



    <!--
    <table>
        <tr>
            <td> <asp:GridView ID="gvListaMascotas" runat="server"></asp:GridView></td>
            <td><asp:Button ID="Button1" runat="server" Text="Button" /></td>
        </tr>

    </table>
-->   

</asp:Content>
