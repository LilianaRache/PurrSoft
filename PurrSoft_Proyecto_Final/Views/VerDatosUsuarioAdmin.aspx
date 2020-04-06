﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="VerDatosUsuarioAdmin.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.VerDatosUsuarioAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../css/VerDatosUsuarioAdmin1.css" rel="stylesheet" />

    
	<div class="container-contact100">
		<div class="contact100-map" id="google_map" data-map-x="40.722047" data-map-y="-73.986422" data-pin="images/icons/map-marker.png" data-scrollwhell="0" data-draggable="1"></div>

		<div class="wrap-contact100">
			<div class="contact100-form-title " style="background-image: url(../Images/FondoVerusu.jpg);">

                <span class="contact100-form-title-1">
                    <asp:Image ID="imgFotoPerfil" runat="server" CssClass="imagen" />	
					Ver datos			
				</span>
			</div><br />

			<form class="contact100-form validate-form">

				<div class="wrap-input100 validate-input" data-validate="TipoDocumento is required">
					<span class="label-input100"></span>
                    <asp:Label class="labels" ID="Label8" runat="server" Text="Tipo de documento"> Tipo de Documento: </asp:Label>
                    <asp:TextBox ID="txtTipoDoc" runat="server"  ReadOnly="True" required="required" CssClass="input100" ></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="NumeroDocumento is required">
					<span class="label-input100"></span>
                    <asp:Label class="labels" ID="Label9" runat="server" Text="Label"> Numero de Documento: </asp:Label>
                    <asp:TextBox ID="txtNumeroDoc" runat="server"  ReadOnly="True" required="required" CssClass="input100"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Rol is required">
					<span class="label-input100"></span>
                    <asp:Label class="labels" ID="Label10" runat="server" Text="Label"> Rol: </asp:Label>
                    <asp:TextBox ID="txtRol" runat="server"  ReadOnly="True" required="required" CssClass="input100"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="nombre is required">
					<span class="label-input100"></span>
                    <asp:Label class="labels" ID="lbNombre" runat="server" Text="Label"> Nombres: </asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server"  ReadOnly="True" required="required" CssClass="input100"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Apellido is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label1" runat="server" Text="Label"> Apellidos: </asp:Label>
                    <asp:TextBox ID="txtApellido" runat="server"  ReadOnly="True" required="required" CssClass="input100"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Direccion is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label2" runat="server" Text="Label"> Dirección: </asp:Label>
                    <asp:TextBox ID="txtDireccion" runat="server" ReadOnly="True" required="required" CssClass="input100" ></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Telefono is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label3" runat="server" Text="Label">Telefono: </asp:Label>
                    <asp:TextBox ID="txtTelefono" runat="server"  ReadOnly="True" required="required" CssClass="input100"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "email is required: ex@abc.xyz">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label4" runat="server" Text="Email">Correo: </asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server"  ReadOnly="True"  required="required" CssClass="input100"  TextMode="Email"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="ciudad is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label5" runat="server" Text="Localidad: "></asp:Label>
                    <asp:TextBox ID="txtCiudad" runat="server"  ReadOnly="True" required="required" CssClass="input100" ></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Password is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label6" runat="server" Text="Contraseña: "></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" required="required" CssClass="input100"  ReadOnly="True" TextMode="Password" ></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
                    <asp:Button ID="btnRegresar" runat="server" Text="Regresar" CssClass="regresar" />
				</div>
			</form>
		</div>
	</div>


	  <script src="../vendor/jquery/jquery.min.js"></script>
      <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</asp:Content>
