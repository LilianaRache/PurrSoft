.<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="HistoriasClinicas.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.HistoriaClinica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="../css/HistoriasClinicas.css" rel="stylesheet" />

    <div class="Container" style="margin-top: 50px;">
        <section class="content4 cid-rArHNGGDR4" id="content04-1q">
            <img class="img1" src="../Images/FondoHistoria.jpg" alt="Mobirise" style="margin-top: 50px;">

            <div class="container">

                <div class="row justify-content-md-end">
                    <div class="col-lg-6 col-md-12">
                        <h2 class="mbr-section-title align-right mbr-bold pb-4 mbr-fonts-style display-1">
                            <div>Handmade<br>
                                Wood Products</div>
                        </h2>
                        <div class="text-wrap">
                            <p class="mbr-text pb-2 mbr-white align-center mbr-fonts-style display-7">
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse metus odio, semper in mi
                        eget, tempus gravida lacus. Vivamus in cursus lectus. Nullam accumsan turpis erat, nec mollis
                        purus molestie at. Pellentesque sed ligula elementum, luctus quam ut, feugiat libero.
                            </p>
                        </div>
                    </div>
                </div>
            </div>

        </section><br /><br />
        <asp:GridView ID="GridView1" CssClass="mGrid" runat="server"></asp:GridView>
    </div>



</asp:Content>
