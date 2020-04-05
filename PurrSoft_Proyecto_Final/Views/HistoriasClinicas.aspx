<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="HistoriasClinicas.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.HistoriaClinica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="../assets/css/main.css" />
<section id="one">
								<div class="image main" data-position="center">
									<img src="../images/FondoHistoria.jpg" />
								</div>
								<div class="container">
									<header class="major">
										<h2>Historial clinico</h2>
									</header>
                                    <h4>Motivo de consulta </h4>
									 <asp:Label ID="Label4" runat="server" Text="Label">cxvdfvfdfdgdfgd</asp:Label>
                                    <br />
									<h4>Descripcion del caso</h4>
									 <asp:Label ID="Label3" runat="server" Text="Label">cxvdfvfdfdgdfgd</asp:Label>
                                    <br />
                                    <h4>Antecedentes</h4>
									< <asp:Label ID="Label2" runat="server" Text="Label">cxvdfvfdfdgdfgd</asp:Label>
                                    <br />
                                    <h4>Valoracion de resultados</h4>
                                    <asp:Label ID="Label1" runat="server" Text="Label">cxvdfvfdfdgdfgd</asp:Label>
								</div>
							</section>

            <div>  
            <ul  class="nav justify-content-end">
                <li class="nav-item text-right">
                <a href="#" type="button" class="btn btn-secondary">Volver</a>
                </li>
            </ul>
          </div>

    <br />
    <div>
        <asp:GridView ID="GridView1" CssClass="mGrid" runat="server"></asp:GridView>
    </div>
    




		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>


</asp:Content>
