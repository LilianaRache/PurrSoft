<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="ActualizarDatosUsuarioAdmin.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.FormularioUsuarioAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../css/ActulizarDatosUsuariosAdmin.css" rel="stylesheet" />

   
	<div class="container-contact100">
		<div class="contact100-map" id="google_map" data-map-x="40.722047" data-map-y="-73.986422" data-pin="images/icons/map-marker.png" data-scrollwhell="0" data-draggable="1"></div>

		<div class="wrap-contact100">
			<div class="contact100-form-title " style="background-image: url(../images/fondo24.jpg);">

                <span class="contact100-form-title-1">
                    <asp:Image ID="imgPerfilActualizar" runat="server" CssClass="imagen"/>
					Actualizar Datos del Usuario
				</span>		
			</div><br />
           

			<form class="contact100-form validate-form">
				<div class="wrap-input100 validate-input" data-validate="nombre is required">
					<span class="label-input100"></span>
                    <asp:Label class="labels" ID="lbNombre" runat="server" Text="Label"> Nombres </asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="input100" ></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator1"
                                ControlToValidate="txtNombre"
                                ErrorMessage="Nombre requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Apellido is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label1" runat="server" Text="Label"> Apellidos</asp:Label>
                    <asp:TextBox ID="txtApellidos" runat="server" CssClass="input100"></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator2"
                                ControlToValidate="txtApellidos"
                                ErrorMessage="Apellido requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Rol is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label8" runat="server" Text="Label"> Rol</asp:Label>
                    <asp:DropDownList ID="ddlRol" runat="server" CssClass="input100" DataSourceID="ROL" DataTextField="Descripcion" DataValueField="Descripcion" Width="650px" Height="25px"></asp:DropDownList>
					<asp:SqlDataSource ID="ROL" runat="server" ConnectionString="<%$ ConnectionStrings:PurrsoftConnectionString %>" SelectCommand="SELECT [Descripcion] FROM [Roles]"></asp:SqlDataSource>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Telefono is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label2" runat="server" Text="Label"> Telefono</asp:Label>
                    <asp:TextBox ID="txtTelefono" runat="server" CssClass="input100"></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator3"
                                ControlToValidate="txtTelefono"
                                ErrorMessage="Telefono requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Direccion is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label3" runat="server" Text="Label">Direccion</asp:Label>
                    <asp:TextBox ID="txtDireccion" runat="server" CssClass="input100" ></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator4"
                                ControlToValidate="txtDireccion"
                                ErrorMessage="Direccion requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Email is required: ex@abc.xyz">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label4" runat="server" Text="Label">Correo</asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="input100" ></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator5"
                                ControlToValidate="txtEmail"
                                ErrorMessage="Email requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Ciudad is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label5" runat="server" Text="Label">Localidad</asp:Label><br />
                    <asp:DropDownList ID="ddlCiudad" CssClass="input100" runat="server" DataSourceID="CIUDAD" DataTextField="Nombre_ciudad" DataValueField="Nombre_ciudad" Width="696px" Height="25px"></asp:DropDownList>
					<asp:SqlDataSource ID="CIUDAD" runat="server" ConnectionString="<%$ ConnectionStrings:PurrsoftConnectionString %>" SelectCommand="SELECT [Nombre_ciudad] FROM [Ciudades]"></asp:SqlDataSource>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Password required: ex@abc.xyz">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label6" runat="server" Text="Label">Contraseña:</asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="input100"></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator6"
                                ControlToValidate="txtPassword"
                                ErrorMessage="Password requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="image is required"">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label7" runat="server" Text="Label">Imagen:</asp:Label>
                    <asp:TextBox ID="txtImagen" runat="server" CssClass="input100"></asp:TextBox>
					<asp:RequiredFieldValidator id="RequiredFieldValidator7"
                                ControlToValidate="txtImagen"
                                ErrorMessage="Imagen requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
                    <asp:Button ID="btnActualizar" CssClass="contact100-form-btn fa fa-long-arrow-right m-l-7" aria-hidden="true" runat="server" Text="Actualizar" OnClick="btnActualizar_Click"/>
					<asp:Button ID="btnRegresar" runat="server" Text="Regresar" CssClass="action-button shadow animate boton-regresar" OnClick="btnRegresar_Click" style="left: 406px; top: 1143px" />
				</div>

			</form>
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
