<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="RegistroUsuarios.aspx.cs" Inherits="PurrSoft_Proyecto_Final.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <link rel="stylesheet" href="reset.css">
	<link href="https://fonts.googleapis.com/css?family=Lato:400,900" rel="stylesheet">
	<link rel="stylesheet" href="../css/registrou.css">


    <div class="container_f">
		<div class="form__top">
			<h2>Registrar <span>Usuario</span></h2>
		</div>

		<form class="form__reg" action="">
			<label for="" class="input">Tipo de documento</label>
			<select name="" id=""> <!--<asp:DropDownList ID="dpdCiudades" runat="server"></asp:DropDownList>-->
				<option value="0">Seleccione</option>
				<option value="CC">Cedula de ciudadania</option>
				<option value="CE">Cedula de extranjeria</option>
				<option value="TI">Tarjeta de indentidad</option>
				<option value="PAS">Pasaporte</option>
			</select>	
			&nbsp &nbsp
			<label > Número de Cedula</label>
			<asp:TextBox ID="TextBox1" CssClass="input" runat="server" ></asp:TextBox>
            <br />   
			<label >Nombres</label>
			<asp:TextBox ID="TextBox2" CssClass="input" runat="server" ></asp:TextBox> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
			<label >Apellidos</label>
			<asp:TextBox ID="TextBox3" CssClass="input" runat="server" ></asp:TextBox>
            <br />
			<label >Crear contraseña</label>
			<asp:TextBox ID="TextBox4" CssClass="input" runat="server" ></asp:TextBox> &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp &nbsp 
			<label >Correo</label>
           <asp:TextBox ID="TextBox5" CssClass="input" runat="server" ></asp:TextBox>
            <br /> 
			<label >Telefono / celular </label>
            <asp:TextBox ID="TextBox6" CssClass="input" runat="server" ></asp:TextBox>
            <br />
			<label for="" class="input">Ciudad</label>  <!--<asp:DropDownList ID="dpciudad" runat="server"></asp:DropDownList>-->
			<select name="" id="">
				<option value="0">Seleccione</option>
				<option value="1">bogota</option>
			</select> &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
			
			<label >Direccion</label>	
            <asp:TextBox ID="TextBox7" CssClass="input" runat="server" ></asp:TextBox>
            <div class="btn__form">

            	<input class="btn__reset" type="reset" value="LIMPIAR">	
            	<input class="btn__submit" type="submit" value="REGISTRAR">
            </div>
		</form>
	</div>
	<div>  
        <ul  class="nav justify-content-end">
        <li class="nav-item text-right">
          <a href="#" type="button" class="btn btn-secondary">Volver</a>
        </li>
        </ul>
     </div>

    
        
</asp:Content>
