<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="ActualizarDatosDoctor.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.ActualizarDatosDoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../css/ActulizarDatosDoctor.css" rel="stylesheet" />

    
	<div class="container-contact100">
		<div class="contact100-map" id="google_map" data-map-x="40.722047" data-map-y="-73.986422" data-pin="images/icons/map-marker.png" data-scrollwhell="0" data-draggable="1"></div>

		<div class="wrap-contact100">
			<div class="contact100-form-title " style="background-image: url(../images/FondoDatosUsuario.jpg);">

                <span class="contact100-form-title-1">
                    <asp:Image ID="imgPerfilActualizarDoctor" runat="server" CssClass="imagen"/>
				</span>		
			</div><br />
            <asp:Button ID="btnVolvel" runat="server" Text="Volver" CssClass="btn btn-info" OnClick="btnVolvel_Click" />

			<form class="contact100-form validate-form">
				<div class="wrap-input100 validate-input" data-validate="nombre is required">
					<span class="label-input100"></span>
                    <asp:Label class="labels" ID="lbNombre" runat="server" Text="Label"> Nombres</asp:Label>
                    <asp:TextBox ID="txtNombreDoctor" runat="server" CssClass="input100"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Apellido is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label1" runat="server" Text="Label"> Apellidos</asp:Label>
                    <asp:TextBox ID="txtApellidosDoctor" runat="server" CssClass="input100"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Rol is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label8" runat="server" Text="Label"> Rol</asp:Label>
                    <asp:TextBox ID="txtRolDoctor" runat="server" CssClass="input100" ReadOnly="true"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Telefono is required">
					<span class="label-input100">Phone:</span>
					<asp:Label class="labels" ID="Label2" runat="server" Text="Label"> Telefono</asp:Label>
                    <asp:TextBox ID="txtTelefonoDoctor" runat="server" CssClass="input100"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Direccion is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label3" runat="server" Text="Label">Direccion</asp:Label>
                    <asp:TextBox ID="txtDireccionDoctor" runat="server" CssClass="input100" ></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Email is required: ex@abc.xyz">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label4" runat="server" Text="Label">Correo</asp:Label>
                    <asp:TextBox ID="txtEmailDoctor" runat="server" CssClass="input100" ></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Ciudad is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label5" runat="server" Text="Label">Ciudad</asp:Label>
                    <asp:TextBox ID="txtCiudad" runat="server" CssClass="input100" ReadOnly="true" ></asp:TextBox>
                    <asp:DropDownList ID="ddlCiudadDoctor" runat="server" DataSourceID="CIUDAD" DataTextField="Nombre_ciudad" DataValueField="Nombre_ciudad" Width="654px" Height="32px"></asp:DropDownList>
					<asp:SqlDataSource ID="CIUDAD" runat="server" ConnectionString="<%$ ConnectionStrings:PurrsoftConnectionString %>" SelectCommand="SELECT [Nombre_ciudad] FROM [Ciudades]"></asp:SqlDataSource>
					<asp:RequiredFieldValidator runat="server" ID="ReqCiudad" ControlToValidate="ddlCiudadDoctor" ErrorMessage="Seleccione la ciudad"></asp:RequiredFieldValidator>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Password required: ex@abc.xyz">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label6" runat="server" Text="Label">Contraseña</asp:Label>
                    <asp:TextBox ID="txtPasswordDoctor" runat="server" CssClass="input100"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="image is required"">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label7" runat="server" Text="Label">Imagen</asp:Label>
                    <asp:TextBox ID="txtImagenDoctor" runat="server" CssClass="input100"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<span>
						  <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" CssClass="contact100-form-btn fa fa-long-arrow-right m-l-7 " OnClick="btnActualizar_Click" />
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

    <script src="../js/Alerts.js"></script>



</asp:Content>
