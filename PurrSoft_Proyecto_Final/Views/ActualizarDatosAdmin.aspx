﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="ActualizarDatosAdmin.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.ActualizarDatosAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../css/ActualizarDatosAdmin.css" rel="stylesheet" />


	<div class="container-contact100">
		<div class="contact100-map" id="google_map" data-map-x="40.722047" data-map-y="-73.986422" data-pin="images/icons/map-marker.png" data-scrollwhell="0" data-draggable="1"></div>

		<div class="wrap-contact100">
			<div class="contact100-form-title"  style="background-image: url(../images/fondoad.jpg)">

                <span class="contact100-form-title-1">
                    <asp:Image ID="imgPerfilActualizar" runat="server" CssClass="imagen"/>
					Actualizar Datos  de Administrador
				</span>		
			</div><br />

			<form class="contact100-form validate-form">
				<div class="wrap-input100 validate-input" data-validate="nombre is required">
					<span class="label-input100"></span>
                    <asp:Label class="labels" ID="lbNombre" runat="server" Text="Label"> Nombres</asp:Label>
                    <asp:TextBox ID="txtNombreP" runat="server" CssClass="input100"></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator1"
                                ControlToValidate="txtNombreP"
                                ErrorMessage="Nombre es requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Apellido is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label1" runat="server" Text="Label"> Apellidos</asp:Label>
                    <asp:TextBox ID="txtApellidosP" runat="server" CssClass="input100"></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator2"
                                ControlToValidate="txtApellidosP"
                                ErrorMessage="Apellido es requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Rol is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label8" runat="server" Text="Label"> Rol</asp:Label>
                    <asp:TextBox ID="txtRolP" runat="server" CssClass="input100" ReadOnly="true"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Telefono is required">
					<span class="label-input100">Phone:</span>
					<asp:Label class="labels" ID="Label2" runat="server" Text="Label"> Telefono</asp:Label>
                    <asp:TextBox ID="txtTelefonoP" runat="server" CssClass="input100"></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator3"
                                ControlToValidate="txtTelefonoP"
                                ErrorMessage="Telefono es requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Direccion is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label3" runat="server" Text="Label">Direccion</asp:Label>
                    <asp:TextBox ID="txtDireccionP" runat="server" CssClass="input100" ></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator4"
                                ControlToValidate="txtDireccionP"
                                ErrorMessage="Direccion es requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Email is required: ex@abc.xyz">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label4" runat="server" Text="Label">Correo</asp:Label>
                    <asp:TextBox ID="txtEmailP" runat="server" CssClass="input100" ></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator5"
                                ControlToValidate="txtEmailP"
                                ErrorMessage="Email es requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Ciudad is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label5" runat="server" Text="Label">Localidad</asp:Label><br />
                    <asp:DropDownList ID="ddlCiudadP" 	CssClass="input100" runat="server" DataSourceID="CIUDAD" DataTextField="Nombre_ciudad" DataValueField="Nombre_ciudad" Width="654px" Height="25px"></asp:DropDownList>
					<asp:SqlDataSource ID="CIUDAD" runat="server" ConnectionString="<%$ ConnectionStrings:PurrsoftConnectionString %>" SelectCommand="SELECT [Nombre_ciudad] FROM [Ciudades]"></asp:SqlDataSource>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Password required: ex@abc.xyz">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label6" runat="server" Text="Label">Contraseña</asp:Label>
                    <asp:TextBox ID="txtPasswordP" runat="server" CssClass="input100"></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator6"
                                ControlToValidate="txtPasswordP"
                                ErrorMessage="Contraseña es requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="image is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label7" runat="server" Text="Label">Imagen</asp:Label>
                    <asp:TextBox ID="txtImagenP" runat="server" CssClass="input100"></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator7"
                                ControlToValidate="txtImagenP"
                                ErrorMessage="Imagen es requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="focus-input100"></span>
				</div><br />

				
						  <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" CssClass="contact100-form-btn fa fa-long-arrow-right m-l-7 " OnClick="btnActualizar_Click" style="top: 1155px" />
				
 
					<div class="container-contact100-form-btn">
					<span>
						  <asp:Button ID="btnVolvel" runat="server" Text="Regresar" CausesValidation="False" CssClass=" boton-regresar" OnClick="btnVolvel_Click" style="left: 495px; top: 1170px" /> 
					</span>
	  
				</div>
				<asp:TextBox ID="txtIdRol"  runat="server" CssClass="input100" Visible="False"></asp:TextBox>
			</form>
		</div>
	</div>

	<script src="../js/sweetalert2.all.min.js"></script>
	<!-- Optional: include a polyfill for ES6 Promises for IE11 -->
	<script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

    <script src="../js/Alerts.js"></script><br /><br />


</asp:Content>
