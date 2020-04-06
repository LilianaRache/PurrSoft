<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="CrearDetalleHistoria.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.CrearDetalleHistoria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../css/CrearDetalleHistoria.css" rel="stylesheet" />

    <div class="main">
        <div class="fondoI" > 
        <section class="signup">

            <div class="container" style="justify-content: center;">

                <div class="signup-content">
                    <form method="POST" id="signup-form" class="signup-form">
                        <h2 class="form-title title">Detalle de Historia</h2>
                        
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Nombre de Doctor" CssClass="letra"></asp:Label><br />
                            <asp:TextBox ID="txtNombreDoctor" runat="server" style="width: 99%; height: 3px"  CssClass="form-input"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Motivo de la Consulta" CssClass="letra"></asp:Label><br />
                            <asp:TextBox ID="txtMotivo" runat="server"  style="height: 11px" CssClass="form-input" ></asp:TextBox>
                        </div><br />
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="Descripcion del Caso" CssClass="letra"></asp:Label><br />
                            <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-input"></asp:TextBox>
                            <br /><br />
                            <asp:Label ID="Label4" runat="server" Text="Antecedentes Medicos" CssClass="letra"></asp:Label>
                        </div>
                        <div class="form-group">
                            &nbsp;<asp:TextBox ID="txtAntecedentes" runat="server" CssClass="form-input"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label5" runat="server" Text="Valoracion de Resultados" CssClass="letra"></asp:Label>
                            &nbsp;</div>
                        <div class="form-group">
                            <asp:TextBox ID="txtValoracion" runat="server" CssClass="form-input"  style="width: 61%; height: 75px" ></asp:TextBox><br />
                            <asp:Label ID="Label6" runat="server" Text="Prescripcion Medica" CssClass="letra"></asp:Label>
                            &nbsp;</div>
                        <div class="form-group">
                            <asp:TextBox ID="txtPrescripcion" runat="server" CssClass="form-input" style="width: 60%; height: 68px"></asp:TextBox><br />
                            <asp:Label ID="Label7" runat="server" Text="Fecha de Consulta" CssClass="letra"></asp:Label>
                            &nbsp;<br />
                            <br />
                               <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <asp:Calendar CssClass="calendario" ID="clFechaConsulta" runat="server" Width="250px"></asp:Calendar>
                                </ContentTemplate>
                            </asp:UpdatePanel><br /><br /><br />
                        
                        </div>
                        <div class="form-group" style="width: 499px">
                            <asp:Label ID="Label8" runat="server" Text="Fecha de Proxima Consulta" CssClass="letra"></asp:Label>
                            <br /><br />
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Calendar CssClass="calendario" ID="clProximaConsulta" runat="server" Width="250px"></asp:Calendar>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            
                        </div>
                        <div class="row">
                            <div class=" col-md-6 form-group">
                                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="form-submit" OnClick="btnGuardar_Click" />
                            </div>
                            <div class=" col-md-6 form-group">
                                 <asp:Button ID="btnVolver" runat="server" Text="Volver" CssClass="form-submit" OnClick="btnVolver_Click" />
                            </div>
                        </div>

                    </form>
                </div>
            </div>
            
        </section>
    </div>



	 <script src="../js/sweetalert2.all.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="../js/Alerts.js"></script>




</asp:Content>
