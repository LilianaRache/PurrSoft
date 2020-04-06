﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="PerfilAdmin.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.PerfilAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   <link href="../css/PerfilAdmin.css" rel="stylesheet" />
    <link href="../css/PerdilAdmin1.css" rel="stylesheet" />

    <div class="container" style="margin:60px 80px;">


         <div >

				<div class="container-contact100-form-btn">
                    <asp:Button ID="btnRegresar" runat="server" Text="Regresar" CssClass="action-button shadow animate boton-regresar" />
				</div>
            </div><br />


        <div class="row">
            <div class="col-md-8">
                <div class="col-lg-3 col-sm-6">
                    <div class="card hovercard" style="left: 0px; top: 0px; width: 626px">
                        <div>
                            <img class="fondo" src="../Images/FondoAdmin.jpg" alt="Alternate Text" />
                        </div>
                        <div class="avatar">
                            <asp:Image ID="imgFotoPerfilAdmin" runat="server" />
                        </div>
                        <div class="info">
                            <div class="title">
                                <span> <asp:Label ID="lblNombrePerfil" runat="server" Text="Label"></asp:Label></span>
                            </div>
                            <div class="desc">
                              <span>
                               <asp:Label ID="lblRol" runat="server" Text="Label"></asp:Label>
                              </span></div>
                        </div>
                        <div>
                            <asp:Button ID="btnActualizar" runat="server" class="btn btn-success letraContenido" Text="Actualizar tus Datos" Height="38px" Width="169px" OnClick="btnActualizar_Click" />
                        </div> <br />
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- BUSQUEDA POR USUARIO -->

<div class="container" style="margin-bottom:50px; left: 369px; top: -546px; width: 300px;">
    <div class="row">
      <div class="col-md-4" style="left: 0px; top: 0px; width: 86%">
	<section class="content">	
			<h1 class="h1">Buscar Por Usuario</h1>
			<div class="letraContenido" >
                <asp:Label ID="Label1"  required="" runat="server" Text="Tipo de documento"></asp:Label>
                <asp:DropDownList ID="ddlTipoDocumento" runat="server">
                    <asp:ListItem>CC</asp:ListItem>
                    <asp:ListItem>TI</asp:ListItem>
                    <asp:ListItem>CE</asp:ListItem>
                </asp:DropDownList>
			</div><br />
			<div class="letraContenido">
                <asp:Label ID="Label2" runat="server" Text="Numero de documento"></asp:Label>
                <asp:TextBox ID="txtNumeroDoc" runat="server" CssClass="cedula"></asp:TextBox>
			</div> <br />
			<div>
                <asp:Button class="btn btn-info letraContenido" ID="btnBuscarUsuario" runat="server" Text="Buscar" Height="39px" Width="95px" OnClick="btnBuscarUsuario_Click" />
			</div><br />
	</section><!-- content -->
          </div>
        </div>
</div><!-- container -->
    <div class="crear">
         <asp:Button ID="btnCrear" runat="server" Text="Crear Usuario" CssClass="btn btn-info letraContenido" OnClick="btnCrear_Click" style="top: -330px;margin-left: 40px; position:relative"/>
    </div>

       

    <asp:GridView ID="gvdListaUsuarios" runat="server" CssClass="mGrid tabla-mascotas" AutoGenerateColumns="False" Width="1139px" Height="209px" OnRowCommand="gvdListaUsuarios_RowCommand" >
        <Columns>
            <asp:BoundField DataField="Numero_doc" HeaderText="Numero Documento" />
            <asp:BoundField DataField="Tipo_documento" HeaderText="Tipo Documento" />
            <asp:BoundField DataField="Nombres" HeaderText="Nombres" />
            <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" />
            <asp:TemplateField HeaderText="Acciones">
                <ItemTemplate>
                    <asp:ImageButton CommandName="Ver" ID="imgVisualizar" runat="server" ImageUrl="~/Images/ojo.png" Width="22px" />
                    <asp:ImageButton CommandName="Actualizar" ID="imgActualizar" runat="server" ImageUrl="~/Images/edit.png" Width="22px" />
                </ItemTemplate>      
            </asp:TemplateField>
        </Columns>
     
    </asp:GridView>


      <script src="../vendor/jquery/jquery.min.js"></script>
      <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
     
    <script src="../js/Alerts.js"></script>
	 <script src="../js/sweetalert2.all.min.js"></script>
	<!-- Optional: include a polyfill for ES6 Promises for IE11 -->
	<script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    


</asp:Content>
