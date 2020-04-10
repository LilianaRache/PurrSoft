<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="VerDetalleHistoriaUsuario.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.VerDetalleHistoriaUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <link href="../css/VerDetalleHistoriaUsuario.css" rel="stylesheet" />
  
    <div class="fondo">
        <br />
        <br />
        </div>
<h1 class="text-center"  style="font-size:45px; color:#00ffff;">Historial clinico</h1>

<div class="container" style="margin-top:50px">
  <div class="row">

    <div class="col-sm-4">
      <h2 style="font-size:25px;" class="color"> &nbsp &nbsp Tu Mascota</h2>
        <br />
        <br />
        <br />
             <div >
                <asp:Image ID="imgFotoMascota" runat="server" CssClass="foto" />
            </div>
            <h4 style="font-size:30px;" class="color"><b>Nombre</b></h4>
            <asp:Label ID="lblNombreMascota1" runat="server" Text="Label" Font-Size="25px" CssClass="color"></asp:Label>
            <h4 style="font-size:30px;" class="color"><b>Raza</b></h4>
            <asp:Label ID="lblRaza1" runat="server" Text="Label" Font-Size="25px" CssClass="color"></asp:Label>

      <hr class="d-sm-none">
    


    <div class="col-sm-8">
      <b><h5  style="font-size:22px;" class="color">Doctor</h5></b>
      <asp:Label ID="lblNombreDoctor" runat="server" CssClass="form-input labels color" Font-Size="18px"></asp:Label>
      <br> <br>
      <h5  style="font-size:22px;" class="color">Motivo Consulta</h5>
      <asp:Label ID="lblMotivoConsulta" runat="server" CssClass="form-input color" Font-Size="18px"></asp:Label>
      <br /><br/>
      <h5  style="font-size:22px;" class="color">Descripcion del caso</h5>
      <asp:Label ID="lblDescripcionCaso" runat="server" CssClass="form-input color" Font-Size="18px"></asp:Label>
        <br />  <br/>
      <h5  style="font-size:22px;" class="color">Antecedentes</h5>
      <asp:Label ID="lblAntecedentes" runat="server" CssClass="form-input color" Font-Size="18px"></asp:Label>
        <br /><br/>
      <h5  style="font-size:22px;" class="color">Valoracion</h5>
      <asp:Label ID="lblValoracion" runat="server" CssClass="form-input color" Font-Size="18px"></asp:Label>
        <br /><br />
      <h5  style="font-size:22px;" class="color">Prescripcion medica</h5>
      <asp:Label ID="lblPrescripcion" runat="server" CssClass="form-input color" Font-Size="18px"></asp:Label>
        <br /><br />
        <h5  style="font-size:22px;" class="color">Fecha de la consulta</h5>
        <asp:Label ID="lblFechaConsulta" runat="server" CssClass="form-input color " Font-Size="18px"></asp:Label>
        <br /><br />

        <h5  style="font-size:22px;" class="color">Fecha proxima consulta</h5>
        <asp:Label ID="lblProximaConsulta" runat="server" CssClass="form-input color" Font-Size="16px" ></asp:Label>
        <br /><br />
         <div class="p-t-30">
            <asp:Button ID="Button1" runat="server" Text="Volver" CssClass="form-submit" Height="55px" Width="120px" OnClick="btnVolver_Click" /><br /><br />
        </div>
        
    </div>
  
  </div>

</div>
    </div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    

</asp:Content>
