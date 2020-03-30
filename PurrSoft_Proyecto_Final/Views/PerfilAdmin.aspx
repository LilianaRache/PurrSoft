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
                            <img src="../Images/admin.jpg" />
                        </div>
                        <div class="info">
                            <div class="title">
                                <span>Nombre del Administrador</span>
                            </div>
                            <div class="desc"><span>ROL</span></div>

                        </div>
                        <div>
                            <asp:Button ID="Button1" runat="server" class="btn btn-success letraContenido" Text="Actualizar" Height="38px" Width="114px" />
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
		<form action="put">
			<h1 class="h1">Buscar Por Usuario</h1>
			<div class="letraContenido">
                <asp:Label ID="Label1"  required="" runat="server" Text="Tipo de documento"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>CC</asp:ListItem>
                    <asp:ListItem>TI</asp:ListItem>
                    <asp:ListItem>PAS</asp:ListItem>
                </asp:DropDownList>
			</div><br />
			<div class="letraContenido">
                <asp:Label ID="Label2" runat="server" Text="Numero de documento"></asp:Label>
				<input type="text" required="" id="password" class="password" />
			</div> <br />
			<div>
                <asp:Button class="btn btn-info letraContenido" ID="Button2" runat="server" Text="Buscar" Height="39px" Width="95px" />
			</div><br />
		
	</section><!-- content -->
          </div>
        </div>
</div><!-- container -->

    <asp:GridView ID="GridView1" runat="server" CssClass="mGrid" Width="1233px"></asp:GridView>


      <script src="../vendor/jquery/jquery.min.js"></script>
      <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</asp:Content>
