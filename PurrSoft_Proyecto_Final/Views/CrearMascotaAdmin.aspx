<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="CrearMascotaAdmin.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.CrearMascotaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../css/CrearMascotaAdmin.css" rel="stylesheet" />

    <div class="contact1">
		<div class="container-contact1">
			<div class="row">

			<div class=" col-xs-3 contact1-pic js-tilt" style="left: -105px; top: 0px">
                <img src="../Images/dog-Crear.jpg" alt="Imagen Formulario" style="width:660px; height:930px;"/>
			</div>
			<div class="col-xs-6 " style="left: 292px; top: 6px; width: 55%;">
			<form class=" contact1-form validate-form" method="put">
				<h4>Datos de las Mascotas </h4> <br />

				<div class="wrap-input1 validate-input" data-validate = "tipoDoc is required">
                    <asp:Label ID="Label2" runat="server" Text="Tipo documento de Usuario"></asp:Label> <br />
                    <asp:TextBox ID="txtTipoDoc" runat="server" CssClass="input1" ReadOnly="true"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>
				<div class="wrap-input1 validate-input" data-validate = "NumeroDoc is required">
                    <asp:Label ID="Label9" runat="server" Text="Numero documento de Usuario"></asp:Label>
                    <asp:TextBox ID="txtNumeroDoc" runat="server" CssClass="input1" ReadOnly="true"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Nombre is required">
                    <asp:Label ID="Label1" runat="server" Text="Nombre Mascota"></asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="input1"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input"  data-validate = "Raza is required">
                    <asp:Label ID="Label8" runat="server" Text="Raza"></asp:Label>
                    <asp:TextBox ID="txtRaza" runat="server" CssClass="input1"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Especie is required">
                    <asp:Label ID="Label7" runat="server" Text="Especie"></asp:Label>
                    <asp:TextBox ID="txtEspecie" runat="server" CssClass="input1"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Color is required">
                    <asp:Label ID="Label6" runat="server" Text="Color"></asp:Label>
                    <asp:TextBox ID="txtColor" runat="server" CssClass="input1"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Sexo is required">
                    <asp:Label ID="Label5" runat="server" Text="Sexo"></asp:Label>
                    <asp:TextBox ID="txtSexo" runat="server" CssClass="input1"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Señas Particulares is required">
                    <asp:Label ID="Label4" runat="server" Text="Señas Particulares"></asp:Label>
                    <asp:TextBox ID="txtSeñas" runat="server" CssClass="input1"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input " data-validate = "Calendar is required">
                    <asp:Label ID="Label3" runat="server" Text="Fecha de Nacimiento"></asp:Label>
                    <asp:Calendar CssClass="calendario" ID="ClFechaNacimiento" runat="server" Height="16px" Width="263px"></asp:Calendar>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "CheckBoxlist is required">
					<h5>Estado de la Mascota</h5><br />
                    <asp:RadioButtonList ID="rbEstadoMascota" runat="server" Height="88px" Width="272px">
                        <asp:ListItem>Activo</asp:ListItem>
                        <asp:ListItem>Inactivo</asp:ListItem>
                    </asp:RadioButtonList>
					</div>

				<div class="container-contact1-form-btn">
                    <asp:Button ID="btnCrear" runat="server" Text="Crear" CssClass="contact1-form-btn" " />
				</div>
			</form>
				</div>
			</div>
		</div>
	</div>

	 <script src="../js/sweetalert2.all.min.js"></script>
	<!-- Optional: include a polyfill for ES6 Promises for IE11 -->
	<script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

    <script src="../js/Alerts.js"></script>




</asp:Content>
