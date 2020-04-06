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
            <asp:Button ID="btnVolver" runat="server" Text="Volver" CssClass="btn btn-info" OnClick="btnVolver_Click"/>

			<form class="contact100-form validate-form">
				<div class="wrap-input100 validate-input" data-validate="tipoDocumento is required">
					<span class="label-input100"></span>
                    <asp:Label class="labels" ID="lbNombre" runat="server" Text="Label"> Tipo de Documento</asp:Label>
                    <asp:DropDownList ID="ddlTipoDocumento" runat="server" CssClass="input100" >
                        <asp:ListItem>CC</asp:ListItem>
                        <asp:ListItem>TI</asp:ListItem>
                        <asp:ListItem>CE</asp:ListItem>
                    </asp:DropDownList>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Cedula is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label1" runat="server" Text="Label"> Numero de Documento</asp:Label>
					<asp:TextBox ID="txtNumeroDocumento" runat="server" CssClass="input100"> </asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Rol required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label10" runat="server" Text="Label">Rol</asp:Label>
                    <asp:DropDownList ID="ddlRol" runat="server" CssClass="input100" DataSourceID="ROL" DataTextField="Descripcion" DataValueField="Descripcion"></asp:DropDownList>
					<asp:SqlDataSource ID="ROL" runat="server" ConnectionString="<%$ ConnectionStrings:PurrsoftConnectionString %>" SelectCommand="SELECT [Descripcion] FROM [Roles]"></asp:SqlDataSource>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Nombres is required">
					<span class="label-input100">Phone:</span>
					<asp:Label class="labels" ID="Label2" runat="server" Text="Label"> Nombres</asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="input100"  ></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Apellidos is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label3" runat="server" Text="Label">Apellidos</asp:Label>
                    <asp:TextBox ID="txtApellido" runat="server" CssClass="input100" ></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Telefono is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label8" runat="server" Text="Label">Telefono</asp:Label>
                    <asp:TextBox ID="txtTelefono" runat="server" CssClass="input100"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Direccion required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label9" runat="server" Text="Label">Direccion</asp:Label>
                    <asp:TextBox ID="txtDireccion" runat="server" CssClass="input100" ></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Email is required: ex@abc.xyz">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label4" runat="server" Text="Label">Email</asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="input100" TextMode="Email" ></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="localidad is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label5" runat="server" Text="Label">Ciudad</asp:Label>
                    <asp:DropDownList ID="ddlCiudad" runat="server" CssClass="input100" DataSourceID="CIUDAD_ID" DataTextField="Nombre_ciudad" DataValueField="Nombre_ciudad" Width="664px"></asp:DropDownList>
					<asp:SqlDataSource ID="CIUDAD_ID" runat="server" ConnectionString="<%$ ConnectionStrings:PurrsoftConnectionString %>" SelectCommand="SELECT [ID_ciudad], [Nombre_ciudad] FROM [Ciudades]"></asp:SqlDataSource>
					<asp:SqlDataSource ID="CIUDAD" runat="server" ConnectionString="<%$ ConnectionStrings:PurrsoftConnectionString %>" SelectCommand="SELECT [Nombre_ciudad] FROM [Ciudades]"></asp:SqlDataSource>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Password is required">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label6" runat="server" Text="Label">Contraseña</asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server"  CssClass="input100"  TextMode="Password"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="image is required"">
					<span class="label-input100"></span>
					<asp:Label class="labels" ID="Label7" runat="server" Text="Label">Imagen</asp:Label>
                    <asp:TextBox ID="txtImagen" runat="server" CssClass="input100"></asp:TextBox>
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<asp:Button CssClass="contact100-form-btn" ID="btnCrear" runat="server" Text="Crear" OnClick="btnCrear_Click" />
					<asp:Button ID="btnRegresar" runat="server" Text="Regresar" CssClass="action-button shadow animate boton-regresar" />
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
