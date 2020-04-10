<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="HistoriasClinicas.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.HistoriaClinica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../css/HistoriasClinicas.css" rel="stylesheet" />

    <div class="Container" style="margin-top: 50px;">
        <section class="content4 cid-rArHNGGDR4" id="content04-1q">
            <img class="img1" src="../Images/FondoHistoria.jpg" alt="Mobirise" style="margin-top: 50px;">

            <div class="container">

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
                <asp:Button ID="btnVolver" runat="server" Text="Regresar" CssClass="boton-regresar boton letraGrilla" OnClick="btnVolver_Click" style="left: 4px; top: 477px; width: 114px; height: 41px" />
            </div>

        </section>
        <br /><br /><br /><br />
        <asp:GridView ID="gvdListaDetalle" CssClass="mGrid letraGrilla" runat="server" Style="margin-left: 73px" Width="1209px" AutoGenerateColumns="False" OnRowCommand="gvdListaDetalle_RowCommand">
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
        <asp:Button ID="btnAgregarDetalle" runat="server" Text="Agregar Detalle" CssClass="btn btn-success botonActualizar letraGrilla" OnClick="btnAgregarDetalle_Click" />
    </div>
    <br />


</asp:Content>
