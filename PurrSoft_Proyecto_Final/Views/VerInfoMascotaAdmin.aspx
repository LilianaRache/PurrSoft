<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="VerInfoMascotaAdmin.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.VerInfoMascotaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../css/VerInfoMascotaAdmin.css" rel="stylesheet" />
	<div class="contact1">
		<div class="container-contact1">
			<div class="row">

			<div class=" col-md-3 contact1-pic js-tilt" style="left: -105px; top: 0px">
                <img src="../Images/parrot-Ver.jpg" alt="Imagen Formulario" style="width:600px; height:930px;"/>
			</div>
			<div class="col-md-6 " style="left: 438px; top: 8px; width: 55%;">
			<form class=" contact1-form validate-form" method="get">
				<h3>Datos de las Mascotas </h3> <br />
				
				<div class="wrap-input1 validate-input" data-validate = "Nombre is required">
                    <asp:Label CssClass="texto" ID="Label1" runat="server" Text="Nombre de la Mascota"></asp:Label>
                    <asp:TextBox ID="txtNombreMascota" runat="server" CssClass="input1" ReadOnly="true"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input"  data-validate = "Especie is required">
					<asp:Label CssClass="texto" ID="Label2" runat="server" Text="Raza "></asp:Label>
                    <asp:TextBox ID="txtEspecieMascota" runat="server" CssClass="input1" ReadOnly="true"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Raza is required">
					<asp:Label CssClass="texto" ID="Label3" runat="server" Text="Especie"></asp:Label>
                    <asp:TextBox ID="txtRazaMascota" runat="server" CssClass="input1" ReadOnly="true"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Color is required">
					<asp:Label CssClass="texto" ID="Label4" runat="server" Text="Color"></asp:Label>
                    <asp:TextBox ID="txtColorMascota" runat="server" CssClass="input1" ReadOnly="true"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Sexo is required">
					<asp:Label CssClass="texto" ID="Label5" runat="server" Text="Sexo"></asp:Label>
                    <asp:TextBox ID="txtSexoMascota" runat="server" CssClass="input1" ReadOnly="true"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Señas Particulares is required">
					<asp:Label CssClass="texto" ID="Label6" runat="server" Text="Señas Particulares"></asp:Label>
                    <asp:TextBox ID="txtSeñasParticulares" runat="server" CssClass="input1"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input " data-validate = "FechaNacimiento is required">
					<asp:Label CssClass="texto" ID="Label7" runat="server" Text="Fecha de Nacimiento"></asp:Label>
                    <asp:TextBox class="input1" ID="txtFechaNacimiento" runat="server"  ReadOnly="true"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Estado is required">
					<asp:Label CssClass="texto" ID="Label8" runat="server" Text="Estado"></asp:Label>
                    <asp:TextBox class="input1" ID="txtEstado" runat="server" ReadOnly="true"></asp:TextBox>
				</div>

				<div class="container-contact1-form-btn">
                    <asp:Button ID="btnVolver" runat="server" Text="Volver"  CssClass="contact1-form-btn" OnClick="btnVolver_Click" />
				</div>
			</form>
				</div>
			</div>
		</div>
	</div>
</asp:Content>
