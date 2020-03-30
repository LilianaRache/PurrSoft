<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="PerfilAdmin.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.PerfilAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   <link href="../css/PerfilAdmin.css" rel="stylesheet" />


    <div class="container" style="margin:60px 80px;">


         <div >

                <div class="col-sm-6" style="right: 90px; top: 6px;  width:1%;">
                    <button type="submit" class="action-button shadow animate gray">Regresar</button>
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
                            <asp:Button ID="btnActualizar" runat="server" class="btn btn-success letraContenido" Text="Actualizar tus Datos" Height="38px" Width="169px" />
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
			<div class="letraContenido">
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
    <div>
        <asp:Button ID="btnCrear" runat="server" Text="Crear Usuario" CssClass="botonCrear btn btn-success" OnClick="btnCrear_Click"/>
    </div>

    <asp:GridView ID="gvdListaUsuarios" runat="server" CssClass="mGrid"  Width="1139px" AutoGenerateColumns="False" Height="209px" OnRowCommand="gvdListaUsuarios_RowCommand" >
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

</asp:Content>
