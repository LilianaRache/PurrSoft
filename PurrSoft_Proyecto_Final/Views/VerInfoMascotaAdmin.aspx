<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="VerInfoMascotaAdmin.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.VerInfoMascotaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../css/VerInfoMascotaAdmin.css" rel="stylesheet" />
	
	<div class="contact1">
		<div class="container-contact1">
			<div class="row">

			<div class=" col-md-3 contact1-pic js-tilt" style="left: -340px; top: 0px">
                <img src="../Images/FondoInfoMas.jpg" alt="Imagen Formulario" style="width:1900px; height:1046px;"/>
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
					<asp:Label CssClass="texto" ID="Label2" runat="server" Text="Especie "></asp:Label>
                    <asp:TextBox ID="txtEspecieMascota" runat="server" CssClass="input1" ReadOnly="true"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Raza is required">
					<asp:Label CssClass="texto" ID="Label3" runat="server" Text="Raza"></asp:Label>
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
                    <asp:TextBox ID="txtSexoMascota" runat="server" CssClass="input1" ReadOnly="true" ></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Señas Particulares is required">
					<asp:Label CssClass="texto" ID="Label6" runat="server" Text="Señas Particulares"></asp:Label>
                    <asp:TextBox ID="txtSeñasParticulares" runat="server" CssClass="input1"></asp:TextBox>
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input " data-validate = "FechaNacimiento is required">
					<input class="input1" name="FechaNacimiento"  placeholder="Fecha de Nacimiento">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Message is required">

					<h3>Estado de la Mascota</h3><br />
                    <asp:CheckBoxList ID="cboxEstadoMascota" runat="server" RepeatColumns="1" Height="77px" Width="359px">
                        <asp:ListItem>Activo</asp:ListItem>
                        <asp:ListItem>Inactivo</asp:ListItem>
                    </asp:CheckBoxList>
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
