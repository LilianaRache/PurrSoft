<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="ActualizarDatosMascotasAdmin.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.FormularioMascotas_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../css/FormularioMascotasAdmin.css" rel="stylesheet" />

    <div>
		&nbsp;<div class="container-contact1 formulario">
			<div class="row">

			<div class=" col-xs-3 contact1-pic js-tilt" style="left: -290px; top: 0px">
                <img src="../Images/Gatofondo1.jpg" alt="Imagen Formulario" style="width:2200px; height:1246px; opacity:0.5;"/>
			</div>
			<div class="col-xs-6 " style="left: 121px; top: 66px; width: 59%; margin-left: 0px; height: 1182px;">
			<form class=" contact1-form validate-form" method="put" >
				<h1 class="color">Datos de las Mascotas </h1> <br />
				
				<div class="wrap-input1 validate-input" data-validate = "Nombre is required">
                    <asp:Label ID="Label1" runat="server" Text="Nombre" CssClass="subtitulo"></asp:Label>
                    <asp:TextBox ID="txtNombreMascota" runat="server" CssClass="input1" Height="38px"></asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator1"
                                ControlToValidate="txtNombreMascota"
                                ErrorMessage="Nombre de la mascota es requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input"  data-validate = "Raza is required">
                    <asp:Label ID="Label2" runat="server" Text="Raza" CssClass="subtitulo"></asp:Label>
                    <asp:TextBox ID="txtRazaMascota" runat="server" CssClass="input1" Height="26px"></asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator2"
                                ControlToValidate="txtRazaMascota"
                                ErrorMessage="Raza es requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Especie is required">
                    <asp:Label ID="Label3" runat="server" Text="Especie" CssClass="subtitulo"></asp:Label>
                    <asp:TextBox ID="txtEspecie" runat="server" CssClass="input1" Height="26px"></asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator3"
                                ControlToValidate="txtEspecie"
                                ErrorMessage="Especie es requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Color is required">
                    <asp:Label ID="Label4" runat="server" Text="Color" CssClass="subtitulo"></asp:Label>
                    <asp:TextBox ID="txtColorMascota" runat="server" CssClass="input1" Height="31px"></asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator4"
                                ControlToValidate="txtColorMascota"
                                ErrorMessage="Color es requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Sexo is required">
                    <asp:Label ID="Label5" runat="server" Text="Sexo" CssClass="subtitulo"></asp:Label>
                    <asp:DropDownList ID="ddlSexoMascota" runat="server" CssClass="input1">
                        <asp:ListItem>F</asp:ListItem>
                        <asp:ListItem>M</asp:ListItem>
                    </asp:DropDownList>
						<asp:RequiredFieldValidator id="RequiredFieldValidator5"
                                ControlToValidate="ddlSexoMascota"
                                ErrorMessage="Sexo es requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="shadow-input1"></span>
				</div>
				
				<div class="wrap-input1 validate-input" data-validate = "Señas Particulares is required">
                    <asp:Label ID="Label8" runat="server" Text="Señas Particulares" CssClass="subtitulo"></asp:Label>
                    <asp:TextBox ID="txtSeñasMascota" runat="server" TextMode="MultiLine" CssClass="input1" Height="56px"></asp:TextBox>
						<asp:RequiredFieldValidator id="RequiredFieldValidator6"
                                ControlToValidate="txtSeñasMascota"
                                ErrorMessage="Señas de la mascota es requerido"
                                runat="server" CssClass="Requiere"/>
					<span class="shadow-input1" style="left: 0; bottom: -25px; height: 0%"></span>
				</div>

				<div class="wrap-input1 validate-input " data-validate = "Fecha is required">
                    <asp:Label ID="Label6" runat="server" Text="Fecha de Nacimiento" CssClass="subtitulo"></asp:Label>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
						<ContentTemplate>
							 <asp:Calendar CssClass="calendario" ID="ClFechaNacimiento" runat="server" Height="16px" Width="263px" ></asp:Calendar>
							<span class="shadow-input1"></span>
						</ContentTemplate>
                    </asp:UpdatePanel>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "cboxEstadoMascota is required">
					<h3 class="color">Estado de la Mascota</h3><br />
                    <asp:RadioButtonList ID="rbEstadoMascota" runat="server" Height="69px" Width="326px" >
                        <asp:ListItem>Activo</asp:ListItem>
                        <asp:ListItem>Inactivo</asp:ListItem>
                    </asp:RadioButtonList>
						<asp:RequiredFieldValidator id="RequiredFieldValidator7"
                                ControlToValidate="rbEstadoMascota"
                                ErrorMessage=" el Estado es requerido"
                                runat="server" CssClass="Requiere"/>
				</div>
				<br />
				<div class="container-contact1-form-btn">
                    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" CssClass="contact1-form-btn" OnClick="btnActualizar_Click"/>
				</div>
				<div class="container-contact100-form-btn">
					<asp:Button ID="btnRegresar" runat="server" Text="Regresar" CssClass="action-button shadow animate boton-regresar" style="left: 356px; top: 1091px" OnClick="btnVolver_Click" />
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
