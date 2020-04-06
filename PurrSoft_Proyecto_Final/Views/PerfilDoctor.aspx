<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="PerfilDoctor.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
    <link href="../css/PerfilDoctor.css" rel="stylesheet" />
    <link href="../css/PerfilDoctor1.css" rel="stylesheet" />

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
                            <img class="fondo" src="../Images/fondo_doctor.jpg" alt="Alternate Text" />
                        </div>
                        <div class="avatar">
                            <img src="../Images/doctor.png" />
                        </div>
                        <div class="info">
                            <div class="title"> 
                                <span>Nombre del Doctor</span>
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

<div class="container" style="margin-bottom:50px; left: 375px; top: -570px; width: 300px;">
    <div class="row">
      <div class="col-md-4" style="left: 1px; top: 28px; width: 86%">
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

          <script src="../vendor/jquery/jquery.min.js"></script>
      <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</asp:Content>
