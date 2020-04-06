<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="VerInfoMascotaAdmin.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.VerInfoMascotaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../css/VerInfoMascotaAdmin.css" rel="stylesheet" />
	
	<div class="contact1">
		<div class="container-contact1">
			<div class="row">

			<div class=" col-md-3 contact1-pic js-tilt" style="left: -340px; top: 0px">
                <img src="../Images/FondoInfoMas.jpg" alt="Imagen Formulario" style="width:1900px; height:1046px;"/>
			</div>

			<div class="col-md-6" style="left: 95px; top: 25px; width: 55%;">
			<form class=" contact1-form validate-form" method="put">
				<h2>Datos de las Mascotas </h2> <br />

				<div class="wrap-input1 validate-input" data-validate = "Nombre is required">
					<input class="input1" type="text" name="Nombre"  placeholder="Nombre" />
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input"  data-validate = "Raza is required">
					<input class="input1" type="text" name="Raza" placeholder="Raza">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Especie is required">
					<input class="input1" type="text" name="Especie" placeholder="Especie">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Color is required">
					<input class="input1" type="text" name="Color" placeholder="Color">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Sexo is required">
					<input class="input1" type="text" name="Sexo"  placeholder="Sexo">
					<span class="shadow-input1"></span>
				</div>

				<div class="wrap-input1 validate-input" data-validate = "Señas Particulares is required">
					<textarea class="input1" name="señasParticulares"  placeholder="Señas Particulares"></textarea>
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
					<button class="contact1-form-btn" id="bntactualizarDatosMascota">Actualizar</button>
				</div>
			</form>
				</div>
			</div>
		</div>
	</div>

</asp:Content>
