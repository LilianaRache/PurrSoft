<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="VerDetalleHistoria.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.VerDetalleHistoria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../css/CrearDetalleHistoria.css" rel="stylesheet" />

    <div class="signup-content" style="width: 334px; height: 390px">
        <div class="col-md-2 " style="left: 6px; top: 20px; width: 100%; height: 405px;">
            <h2 class="titulo" style="width: 241px; height: 102px;">Detalle de Historia</h2>
            <div class="fakeimg">
                <asp:Image ID="imgFotoMascota" runat="server" />
            </div>
            <h4>Nombre</h4>
            <asp:Label ID="lblNombreMascota" runat="server" Text="Label"></asp:Label>
            <h4>Raza</h4>
            <asp:Label ID="lblRaza" runat="server" Text="Label"></asp:Label>
        </div>
    </div>




    <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2" style="left: 240px; top: -427px; width: 956px; margin-top: 0px;">
                <div class="card-heading">
                </div>
                <div class="card-body">
                    <h2 class="title">Detalle de Historia </h2>
                    <form method="POST">

                        <div class="row row-space">
                            <div class="col-2" style="left: 0px; top: 0px; width: 111%">
                                <div class="input-group" style="left: 0px; top: 0px; width: 170%">
                                    <asp:Label ID="Label1" runat="server" Text="Nombre del Doctor" CssClass="letra"></asp:Label><br />
                                    <asp:Label ID="lblNombreDoctor" runat="server" CssClass="form-input labels"></asp:Label>
                                </div>
                            </div>
                            <div class="col-2" style="left: 200px; top: 0px; width: 111%">
                                <div class="input-group" style="left: 0px; top: 0px; width: 150%">
                                    <asp:Label ID="Label2" runat="server" Text="Motivo de la consulta" CssClass="letra"></asp:Label><br />
                                    <asp:Label ID="lblMotivoConsulta" runat="server" CssClass="form-input"></asp:Label>
                                </div>
                            </div>
                        </div>


                        <div class="input-group">
                            <asp:Label ID="Label3" runat="server" Text="Descripcion el Caso" CssClass="letra"></asp:Label><br />
                            <asp:Label ID="lblDescripcionCaso" runat="server" CssClass="form-input"></asp:Label>
                        </div>
                        <br />


                        <div class="input-group">
                            <asp:Label ID="Label11" runat="server" Text="Antecedentes Medicos" CssClass="letra"></asp:Label><br />
                            <asp:Label ID="lblAntecedentes" runat="server" CssClass="form-input"></asp:Label>
                        </div>
                        <br />

                        <div class="input-group">
                            <asp:Label ID="Label12" runat="server" Text="Valoracion de Resultados" CssClass="letra"></asp:Label><br />
                            <asp:Label ID="lblValoracion" runat="server" CssClass="form-input"></asp:Label>
                        </div>
                        <br />


                        <div class="input-group">
                            <asp:Label ID="Label15" runat="server" Text="Prescripcion Medica" CssClass="letra"></asp:Label><br />
                            <asp:Label ID="lblPrescripcion" runat="server" CssClass="form-input"></asp:Label>
                        </div>
                        <br />


                        <div class="input-group">
                            <asp:Label ID="Label16" runat="server" Text="Fecha de la Consulta" CssClass="letra"></asp:Label><br />
                            <asp:Label ID="lblFechaConsulta" runat="server" CssClass="form-input"></asp:Label>
                        </div>
                        <br />


                        <div class="input-group">
                            <asp:Label ID="Label17" runat="server" Text="Fecha de la Proxima Consulta" CssClass="letra"></asp:Label><br />
                            <asp:Label ID="lblProximaConsulta" runat="server" CssClass="form-input"></asp:Label>
                        </div>
                        <br />

                        <div class="p-t-30">
                           <asp:Button ID="btnVolver" runat="server" Text="Volver" CssClass="form-submit" Height="55px" Width="120px" OnClick="btnVolver_Click" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
