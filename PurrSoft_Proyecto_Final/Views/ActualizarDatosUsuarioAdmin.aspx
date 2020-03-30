<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="ActualizarDatosUsuarioAdmin.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.FormularioUsuarioAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../css/ActulizarDatosUsuariosAdmin.css" rel="stylesheet" />

   
	<div class="container-contact100">
		<div class="contact100-map" id="google_map" data-map-x="40.722047" data-map-y="-73.986422" data-pin="images/icons/map-marker.png" data-scrollwhell="0" data-draggable="1"></div>

		<div class="wrap-contact100">
			<div class="contact100-form-title " style="background-image: url(../images/FondoDatosUsuario.jpg);">

                <span class="contact100-form-title-1"><img class="imagen" src="../Images/summerfield-336672_1280.jpg" style="margin-bottom: 0px" />
					Pepito Perez
				</span>		
			</div><br />

			<form class="contact100-form validate-form">
				<div class="wrap-input100 validate-input" data-validate="nombre is required">
					<span class="label-input100"></span>
                    <asp:Label class="labels" ID="lbNombre" runat="server" Text="Label"> Nombres</asp:Label>
					<input class="input100" type="text" name="nombre" placeholder="Nombres Completos">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Apellido is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label1" runat="server" Text="Label"> Apellidos</asp:Label>
					<input class="input100" type="text" name="Apellido" placeholder="Apellidos Completos">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Direccion is required">
					<span class="label-input100">Phone:</span>
					<asp:Label class="labels" ID="Label2" runat="server" Text="Label"> direccion</asp:Label>
					<input class="input100" type="text" name="direccion" placeholder=" direccion de residencia">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="telefono is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label3" runat="server" Text="Label">Telefono</asp:Label>
					<input class="input100" type="text" name="telefono" placeholder="Telefono de contacto">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "email is required: ex@abc.xyz">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label4" runat="server" Text="Label">Correo</asp:Label>
					<input class="input100" type="text" name="email" placeholder="Correo">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="ciudad is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label5" runat="server" Text="Label">Ciudad</asp:Label>
					<input class="input100" type="text" name="ciudad" placeholder="Ciudad de residencia">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Valid CUADRARRRR email is required: ex@abc.xyz">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label6" runat="server" Text="Label">Contraseña</asp:Label>
					<input class="input100" type="password" name="email" placeholder="Contraseña de usuario">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="image is required"">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label7" runat="server" Text="Label">Imagen</asp:Label>
					<input class="input100" type="text" name="image" placeholder="Link de la imagen">
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn">
						<span>
							Actualizar
							<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>


</asp:Content>
