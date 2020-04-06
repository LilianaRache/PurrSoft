<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="ActualizarDatosMascotasAdmin.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.FormularioMascotas_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../css/FormularioMascotasAdmin.css" rel="stylesheet" />

    <div>
		<img src="../Images/fondo25.jpg" alt="Imagen Formulario" style="position: absolute;"/>
		<div class="container-contact1 formulario">
			<div class="row">

			<div class=" col-xs-3 contact1-pic js-tilt" style="left: -290px; top: 0px">
                <img src="../Images/Fondo5.jpg" alt="Imagen Formulario" style="width:2200px; height:1095px;"/>
			</div>
			<div class="col-xs-6 " style="left: 590px; top: -10px; width: 55%; margin-left: 0px;">
                <asp:Button ID="btnVolver" runat="server" Text="Volver" CssClass="btn btn-info" OnClick="btnVolver_Click"/>
			<form class=" contact1-form validate-form" method="put">
				<h2>Datos de las Mascotas </h2> <br />
				
				<div class="wrap-input1 validate-input" data-validate = "Nombre is required">
                    <asp:Label ID="Label1" runat="server" Text="Nombre" CssClass="subtitulo"></asp:Label>
                    <asp:TextBox ID="txtNombreMascota" runat="server" CssClass="input1"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input"  data-validate = "Raza is required">
                    <asp:Label ID="Label2" runat="server" Text="Raza" CssClass="subtitulo"></asp:Label>
                    <asp:TextBox ID="txtRazaMascota" runat="server" CssClass="input1"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Especie is required">
                    <asp:Label ID="Label3" runat="server" Text="Especie" CssClass="subtitulo"></asp:Label>
                    <asp:TextBox ID="txtEspecie" runat="server" CssClass="input1"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Color is required">
                    <asp:Label ID="Label4" runat="server" Text="Color" CssClass="subtitulo"></asp:Label>
                    <asp:TextBox ID="txtColorMascota" runat="server" CssClass="input1"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Sexo is required">
                    <asp:Label ID="Label5" runat="server" Text="Sexo" CssClass="subtitulo"></asp:Label>
                    <asp:TextBox ID="txtSexoMascota" runat="server" CssClass="input1"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Señas Particulares is required">
                    <asp:Label ID="Label8" runat="server" Text="Señas Particulares" CssClass="subtitulo"></asp:Label>
                    <asp:TextBox ID="txtSeñasMascota" runat="server" TextMode="MultiLine" CssClass="input1"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input " data-validate = "Fecha is required">
                    <asp:Label ID="Label6" runat="server" Text="Fecha de Nacimiento" CssClass="subtitulo"></asp:Label>
                    <asp:TextBox ID="txtFechaNacimiento" runat="server" ReadOnly="true"></asp:TextBox>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
						<ContentTemplate>
							 <asp:Calendar CssClass="calendario" ID="ClFechaNacimiento" runat="server" Height="16px" Width="263px" ></asp:Calendar>
							<span class="shadow-input1"></span>
						</ContentTemplate>
                    </asp:UpdatePanel>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "cboxEstadoMascota is required">
					<h5>Estado de la Mascota</h5><br />
                    <asp:TextBox ID="txtEstado" runat="server" ReadOnly="true" CssClass="input1">></asp:TextBox><br />
                    <asp:RadioButtonList ID="rbEstadoMascota" runat="server" Height="69px" Width="326px">
                        <asp:ListItem>Activo</asp:ListItem>
                        <asp:ListItem>Inactivo</asp:ListItem>
                    </asp:RadioButtonList>
				</div>

				<div class="container-contact1-form-btn">
                    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" CssClass="contact1-form-btn" OnClick="btnActualizar_Click"/>
				</div>
				<div class="container-contact100-form-btn">
					<asp:Button ID="btnRegresar" runat="server" Text="Regresar" CssClass="action-button shadow animate boton-regresar" />
				</div>
			</form>
				</div>
			</div>
		</div>
	</div>

    <div class="alert alert-secondary" role="alert">
        <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>        
    </div>

     <script src="../js/sweetalert2.all.min.js"></script>
	<!-- Optional: include a polyfill for ES6 Promises for IE11 -->
	<script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="../js/Alerts.js"></script>

</asp:Content>
