<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="CrearMascotaAdmin.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.CrearMascotaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../css/CrearMascotaAdmin.css" rel="stylesheet" />

    <div class="contact1">
        <div class="container-contact1 letra">
            <div class="row">

                <div class=" col-xs-3 contact1-pic js-tilt" style="left: -445px; top: 0px">
                    <img src="../Images/Fondo2.png" alt="Imagen Formulario" style="width: 1900px; height: 1382px; opacity: 0.8;" />
                </div>

                <div class="col-md-6 " style="left: 292px; top: 6px; width: 55%; height: 1255px;">
                    <form class=" contact1-form validate-form" method="put">
                        <h4>Crear Nueva Mascota </h4>
                        <br />

                        <div class="wrap-input1 validate-input" data-validate="tipoDoc is required">
                            <asp:Label ID="Label2" runat="server" Text="Tipo documento de Usuario"></asp:Label>
                            <br />
                            <asp:TextBox ID="txtTipoDoc" runat="server" CssClass="input1" ReadOnly="true"></asp:TextBox>
                            <span class="shadow-input1"></span>
                        </div>
                        <div class="wrap-input1 validate-input" data-validate="NumeroDoc is required">
                            <asp:Label ID="Label9" runat="server" Text="Numero documento de Usuario"></asp:Label>
                            <asp:TextBox ID="txtNumeroDoc" runat="server" CssClass="input1" ReadOnly="true"></asp:TextBox>
                            <span class="shadow-input1"></span>
                        </div>

                        <div class="wrap-input1 validate-input" data-validate="Nombre is required">
                            <asp:Label ID="Label1" runat="server" Text="Nombre Mascota"></asp:Label>
                            <asp:TextBox ID="txtNombre" runat="server" CssClass="input1"></asp:TextBox>
                            	<asp:RequiredFieldValidator id="RequiredFieldValidator1"
                                ControlToValidate="txtNombre"
                                ErrorMessage="Nombre es requerido"
                                runat="server" CssClass="Requiere"/>
                            <span class="shadow-input1"></span>
                        </div>

                        <div class="wrap-input1 validate-input" data-validate="Raza is required">
                            <asp:Label ID="Label8" runat="server" Text="Raza"></asp:Label>
                            <asp:TextBox ID="txtRaza" runat="server" CssClass="input1"></asp:TextBox>
                            	<asp:RequiredFieldValidator id="RequiredFieldValidator2"
                                ControlToValidate="txtRaza"
                                ErrorMessage="Raza es requerido"
                                runat="server" CssClass="Requiere"/>
                            <span class="shadow-input1"></span>
                        </div>

                        <div class="wrap-input1 validate-input" data-validate="Especie is required">
                            <asp:Label ID="Label7" runat="server" Text="Especie"></asp:Label>
                            <asp:TextBox ID="txtEspecie" runat="server" CssClass="input1"></asp:TextBox>
                            <asp:RequiredFieldValidator id="RequiredFieldValidator3"
                                ControlToValidate="txtEspecie"
                                ErrorMessage="Especie es requerido"
                                runat="server" CssClass="Requiere"/>
                            <span class="shadow-input1"></span>
                        </div>

                        <div class="wrap-input1 validate-input" data-validate="Color is required">
                            <asp:Label ID="Label6" runat="server" Text="Color"></asp:Label>
                            <asp:TextBox ID="txtColor" runat="server" CssClass="input1"></asp:TextBox>
                            <asp:RequiredFieldValidator id="RequiredFieldValidator4"
                                ControlToValidate="txtColor"
                                ErrorMessage="Color es requerido"
                                runat="server" CssClass="Requiere"/>
                            <span class="shadow-input1"></span>
                        </div>

                        <div class="wrap-input1 validate-input" data-validate="Sexo is required">
                            <asp:Label ID="Label5" runat="server" Text="Sexo"></asp:Label><br />
                            <asp:DropDownList ID="ddlSexoMascota" runat="server"  CssClass="input1">
                                <asp:ListItem>F</asp:ListItem>
                                <asp:ListItem>M</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator id="RequiredFieldValidator5"
                                ControlToValidate="ddlSexoMascota"
                                ErrorMessage="Sexo es requerido"
                                runat="server" CssClass="Requiere"/>
                            <span class="shadow-input1"></span>
                        </div>

                        <div class="wrap-input1 validate-input" data-validate="Señas Particulares is required">
                            <asp:Label ID="Label4" runat="server" Text="Señas Particulares"></asp:Label>
                            <asp:TextBox ID="txtSeñas" runat="server" CssClass="input1" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator id="RequiredFieldValidator6"
                                ControlToValidate="txtSeñas"
                                ErrorMessage="Señas Particulares es requerido"
                                runat="server" CssClass="Requiere"/>
                            <span class="shadow-input1"></span>
                        </div>

                        <div class="wrap-input1 validate-input " data-validate="Calendar is required">
                            <asp:Label ID="Label3" runat="server" Text="Fecha de Nacimiento"></asp:Label>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Calendar CssClass="calendario" ID="ClFechaNacimiento" runat="server" Height="16px" Width="263px"></asp:Calendar>
                                    <span class="shadow-input1"></span>
                                </ContentTemplate>
                            </asp:UpdatePanel>

                        </div>

                        <div class="wrap-input1 validate-input" data-validate="CheckBoxlist is required">
                            <h5>Estado de la Mascota</h5>
                            <br />
                            <asp:RadioButtonList ID="rbEstadoMascota" runat="server" Height="103px" Width="272px">
                                <asp:ListItem>Activo</asp:ListItem>
                                <asp:ListItem>Inactivo</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator id="RequiredFieldValidator7"
                                ControlToValidate="rbEstadoMascota"
                                ErrorMessage="Estado es requerido"
                                runat="server" CssClass="Requiere"/>
                        </div>

                        <div class="container-contact1-form-btn">
                            <asp:Button ID="btnCrear" runat="server" Text="Crear" CssClass="boton-mascota" OnClick="btnCrear_Click" style="left: -86px; top: 1305px" />
                        </div>
                        <div class="container-contact1-form-btn">
                            <asp:Button ID="btnRegresar" runat="server" Text="Regresar" CausesValidation="false" OnClick="btnRegresar_Click" CssClass="boton-regresar"  style="left: 233px; top: 1307px"/>
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
