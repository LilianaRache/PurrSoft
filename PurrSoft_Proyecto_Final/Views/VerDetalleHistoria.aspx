
<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="VerDetalleHistoria.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.VerDetalleHistoria" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <!--

    <link href="../css/CrearDetalleHistoria.css" rel="stylesheet" />
                        <div class="form-group" style="width: 499px">
                            <asp:Label ID="Label8" runat="server" Text="Fecha de Consulta" CssClass="letra"></asp:Label>
                            <br /><br />
                            <asp:Calendar CssClass="calendario" ID="clfechaConsulta" runat="server" Width="250px"></asp:Calendar>
                        </div>
                        <div class="form-group" style="width: 499px">
                            <asp:Label ID="Label9" runat="server" Text="Fecha de Proxima Consulta" CssClass="letra"></asp:Label>
                            <br /><br />
                            <asp:Calendar CssClass="calendario" ID="clfechaProximaConsulta" runat="server" Width="250px"></asp:Calendar>
                        </div>
                        <div class="row">
                            <div class=" col-md-6 form-group">
                                <input type="submit" name="submit" id="guardar" class="form-submit" value="Guardar" />
                            </div>
                            <div class=" col-md-6 form-group">
                                <input type="button" name="submit" id="volver" class="form-submit" value="Volver" />  
-->

    <link href="../css/historialMascota.css" rel="stylesheet" />

    <div class="fondoI">
        <br />  
    
        <h1 class="text-center">Historial medico</h1>

    <div class="container" style="margin-top:50px">
        <div class="row">

        <div class="col-sm-4">
      <h2 > &nbsp  &nbsp  &nbsp Mascota</h2>
                    <div class="fakeimg">
                <asp:Image ID="imgFotoMascota" runat="server" />
                </div>
        <asp:Label ID="lbNombre" runat="server" Text="Nombre" Font-Size="18px"  ></asp:Label> <br />
            <asp:Label ID="lblNombreMas" runat="server" Text="Label" Font-Size="15px"></asp:Label> 
            <br />
      <asp:Label ID="lbRaza" runat="server" Text="Raza" Font-Size="18px"></asp:Label> <br />
            <asp:Label ID="lblRaza" runat="server" Text="Label" Font-Size="15px"></asp:Label>
            <br />
      <ul class="nav nav-pills flex-column">
        <li>
            <asp:Label ID="lbles" runat="server" Text="Estado" Font-Size="18px"></asp:Label>
        </li>
        <li class="nav-item">
            <asp:Button ID="Button1" CssClass="btn btn-success " runat="server" Text="Activo" Height="38px" Width="83px" />
        </li>
        <li class="nav-item">
            <asp:Button ID="Button2"  CssClass="btn btn-danger" runat="server" Text="Inactivo" Height="38px" Width="83px" />
            
        </li>
      </ul>




    <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2" style="left: 240px; top: -427px; width: 956px; margin-top: 0px;">
                <div class="card-heading">
            </div>

    <div class="col-sm-8">
        <asp:Label ID="labldoct" runat="server" Text="Doctor" Font-Size="19px"></asp:Label><br />
        <asp:Label ID="lblNombreDoctor" runat="server" Text="Label" Font-Size="15px"></asp:Label>
        <br>
        
        <asp:Label ID="lblmotivoconsulta" runat="server" Text="Antecedentes de la mascota" Font-Size="19px"></asp:Label><br />  
        <asp:Label ID="lblMotivoConsulta" runat="server" Text="Label" Font-Size="15px"></asp:Label>
        <br />
        <asp:Label ID="lbldescripcion" runat="server" Text="Antecedentes de la mascota" Font-Size="19px"></asp:Label><br />  
        <asp:Label ID="lblDescripcionCaso" runat="server" Text="Label" Font-Size="15px"></asp:Label>
        <br />
        <asp:Label ID="lbantecedentes" runat="server" Text="Antecedentes de la mascota" Font-Size="19px"></asp:Label><br />  
        <asp:Label ID="lblAntecedentes" runat="server" Text="Label" Font-Size="15px"></asp:Label>
        <br />

        <asp:Label ID="lblvalora" runat="server" Text="Valoracion" Font-Size="19px"></asp:Label><br />
        <asp:Label ID="lblValoracion" runat="server" Text="Label" Font-Size="15px"></asp:Label>
        <br />
     
        <asp:Label ID="lblprescri" runat="server" Text="Precripcion medica" Font-Size="19px"></asp:Label> <br />   
        <asp:Label ID="lblPrescripcion" runat="server" Text="Label" Font-Size="15px"></asp:Label>
           <br />             
                        

      
          <div>  
        <ul  class="nav justify-content-end">
        <li class="nav-item text-right">
          <a href="#" type="button" class="btn btn-secondary">Volver</a>
        </li>
        </ul>
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
