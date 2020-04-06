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

                <div class="row justify-content-md-end">
                    <div class="col-lg-6 col-md-12">
                        <h2 class="mbr-section-title align-right mbr-bold pb-4 mbr-fonts-style display-1">
                            <br />
                            <div>
                                <asp:Label ID="lblNombreMascota" runat="server" Text="Label"></asp:Label>
                            </div>
                        </h2>
                        <div class="text-wrap">
                            <asp:Label ID="lblTexto" runat="server" Text="Label" CssClass="mbr-text pb-2 mbr-white align-center mbr-fonts-style display-7"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>

            <div>
                <asp:Button ID="btnVolver" runat="server" Text="Volver" Height="37px" Width="69px" CssClass="btn btn-info boton" OnClick="btnVolver_Click" />
    </div>

        </section>
        <br />
        <br />
        <asp:GridView ID="gvdListaDetalle" CssClass="mGrid" runat="server" Style="margin-left: 73px" Width="1209px" AutoGenerateColumns="False" OnRowCommand="gvdListaDetalle_RowCommand">
            <Columns>
                <asp:BoundField DataField="ID_detalle_historia" HeaderText="Id_Detalle" />
                <asp:BoundField DataField="Nombre_doctor" HeaderText="Doctor que lo atendio" />
                <asp:BoundField DataField="Motivo_consulta" HeaderText="Motivo de la consulta" />
                <asp:TemplateField HeaderText="Acciones">
                  <ItemTemplate> 
                    <asp:ImageButton CommandName="Ver" ID="imgVisualizar" runat="server" ImageUrl="~/Images/ojo.png" Width="22px"/>
                  </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <div>
        <asp:Button ID="btnAgregarDetalle" runat="server" Text="Agregar Detalle" CssClass="btn btn-warning botonActualizar" OnClick="btnAgregarDetalle_Click" />
    </div>
    <br />

<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
</asp:Content>
