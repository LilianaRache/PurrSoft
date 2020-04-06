<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="CrearUsuarioAdmin.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.CrearUsuarioAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../css/CrearUsuarioAdmin.css" rel="stylesheet" />

   
	<div class="container-contact100">
		<div class="contact100-map" id="google_map" data-map-x="40.722047" data-map-y="-73.986422" data-pin="images/icons/map-marker.png" data-scrollwhell="0" data-draggable="1"></div>

		<div class="wrap-contact100">
			<div class="contact100-form-title " style="background-image: url(../images/FondoVeter2.jpg);">

                <span class="contact100-form-title-1">
					<img src="../Images/FondoVeter1.jpg" class="imagen" style="margin-bottom: 0px" />
					Actualizar Datos Administrador
				</span>		
			</div><br />

			<form class="contact100-form validate-form">
				<div class="wrap-input100 validate-input" data-validate="nombre is required">
					<span class="label-input100"></span>
                    <asp:Label class="labels" ID="lbNombre" runat="server" Text="Label"> Nombres:</asp:Label>
					<input class="input100" type="text" name="nombre" placeholder="Nombres Completos">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Apellido is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label1" runat="server" Text="Label"> Apellidos:</asp:Label>
					<input class="input100" type="text" name="Apellido" placeholder="Apellidos Completos">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Direccion is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label2" runat="server" Text="Label"> Dirección:</asp:Label>
					<input class="input100" type="text" name="direccion" placeholder=" Dirección de residencia">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Telefono is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label3" runat="server" Text="Label">Telefono: </asp:Label>
					<input class="input100" type="number" name="telefono" placeholder="Telefono de contacto">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Email is required: ex@abc.xyz">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label4" runat="server" Text="Label">Correo:</asp:Label>
					<input class="input100" type="text" name="email" placeholder="Correo">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="localidad is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label5" runat="server" Text="Label">Localidad</asp:Label>
					<input class="input100" type="text" name="localidad" placeholder="Localidad">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Valid CUADRARRRR email is required: ex@abc.xyz">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label6" runat="server" Text="Label">Contraseña: </asp:Label>
					<input class="input100" type="password" name="email" placeholder="Contraseña de usuario">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="image is required"">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label7" runat="server" Text="Label">Imagen: </asp:Label>
					<input class="input100" type="text" name="image" placeholder="Link de la imagen">
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
                    <asp:Button ID="btnActualizar" CssClass="contact100-form-btn fa fa-long-arrow-right m-l-7" aria-hidden="true" runat="server" Text="Actualizar"/>
					<asp:Button ID="btnRegresar" runat="server" Text="Regresar" CssClass="action-button shadow animate boton-regresar" />
				</div>

			</form>
		</div>
	</div>

		  <script src="../vendor/jquery/jquery.min.js"></script>
      <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>


</asp:Content>
