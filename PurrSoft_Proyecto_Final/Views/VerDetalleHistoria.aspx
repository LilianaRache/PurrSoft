<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="VerDetalleHistoria.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.VerDetalleHistoria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  
    <link href="../css/historialMascota.css" rel="stylesheet" />
    <link href="../css/VerDetalleHistoria.css" rel="stylesheet" />
    <div class="fondoI">
        <br />
        
        <div class="container" style="margin-top: 50px; left: -76px; top: -2px;">
            <div class="row">

                <div class="col-sm-4" style="left: -183px; top: 54px; width: 18%; height: 432px">
                    <h2>&nbsp  &nbsp  &nbsp Mascota</h2>
                    <div>
                        <asp:Image ID="imgFotoMascota" runat="server" CssClass="foto"/>
                    </div>
                    <asp:Label ID="lbNombre" runat="server" Text="Nombre" Font-Size="18px"></asp:Label>
                    <br />
                    <asp:Label ID="lblNombreMascota" runat="server" Text="Label" Font-Size="15px"></asp:Label>
                    <br />
                    <asp:Label ID="label22" runat="server" Text="Raza" Font-Size="18px"></asp:Label>
                    <br />
                    <asp:Label ID="lblRaza" runat="server" Text="Label" Font-Size="15px"></asp:Label>
                    <br />
                
                </div>
            </div>

        </div>

    </div>


    <div class="page-wrapper  p-t-180 p-b-100 font-robo ">
        <div class="wrapper wrapper--w960 ">
            <div class="card card-2 " style="left:300px; top: -549px; width: 600px; margin-top: 0px; height:300px">
                <div class="card-heading ">
                </div>
                <h1 style="text-align:center">Detalle De Historia</h1>
                <div class="col-sm-8 centrar" style="left: 80px; top: -6px "><br /><br />
                    <asp:Label ID="labldoct" runat="server" Text="Doctor" Font-Size="19px"></asp:Label><br />
                    <asp:Label ID="lblNombreDoctor" runat="server" Text="Label" Font-Size="15px"></asp:Label>
                     <br /> <br />

                    <asp:Label ID="label1" runat="server" Text="Motivo Consulta" Font-Size="19px"></asp:Label><br />
                    <asp:Label ID="lblMotivoConsulta" runat="server" Text="Label" Font-Size="15px"></asp:Label>
                    <br /> <br />
                    <asp:Label ID="label2" runat="server" Text="Descripcion del caso" Font-Size="19px"></asp:Label><br />
                    <asp:Label ID="lblDescripcionCaso" runat="server" Text="Label" Font-Size="15px"></asp:Label>
                    <br />
                    <asp:Label ID="label3" runat="server" Text="Antecedentes Medicos" Font-Size="19px"></asp:Label><br />
                    <asp:Label ID="lblAntecedentes" runat="server" Text="Label" Font-Size="15px"></asp:Label>
                    <br /> <br />

                    <asp:Label ID="label4" runat="server" Text="Valoracion Medica" Font-Size="19px"></asp:Label><br />
                    <asp:Label ID="lblValoracion" runat="server" Text="Label" Font-Size="15px"></asp:Label>
                    <br /> <br />

                    <asp:Label ID="lblprescri" runat="server" Text="Precripcion medica" Font-Size="19px"></asp:Label><br />
                    <asp:Label ID="lblPrescripcion" runat="server" Text="Label" Font-Size="15px"></asp:Label>
                    <br /> <br />

                    <asp:Label ID="Label5" runat="server" Text="Fecha de consulta" Font-Size="19px"></asp:Label><br />
                    <asp:Label ID="lblFechaConsulta" runat="server" Text="Label" Font-Size="15px"></asp:Label>
                    <br /> <br />

                     <asp:Label ID="Label7" runat="server" Text="Fecha Proxima Consulta" Font-Size="19px"></asp:Label><br />
                    <asp:Label ID="lblProximaConsulta" runat="server" Text="Label" Font-Size="15px"></asp:Label>
                    <br /> <br />

               
                 
                    <br />

                </div>
            </div>

        </div>
    </div>

       <asp:Button ID="bntRegresar" runat="server" Text="Regresar" CssClass="boton-regresar" style="left: 706px; top: 942px" OnClick="bntRegresar_Click" />
</asp:Content>
