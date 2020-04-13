<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="Contactanos.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.Contactanos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



<link href="../css/Contacto.css" rel="stylesheet" />

    <div class="Container" style="margin-top: -70px;">
        <section class="content4 cid-rArHNGGDR4" id="content04-1q">
            <img class="fondo" src="../Images/FondoContacto.jpg" alt="Mobirise">


            <div class="container">

                


                <div class="row justify-content-md-end">
                    <div class="col-lg-6 col-md-12">
                            

                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="well well-sm contenedor">
                                        <form class="form-horizontal" method="post">
                                            <fieldset class="fondoContenedor">
                                                <legend class="text-center contact">Contactanos</legend>

                                                          <div class="form-group">
                                                            <div class="input-group caja-nombre">
                                                              <div class="input-group-addon">
                                                                <img class="usuario" src="../Images/usuario.jpg" alt="Alternate Text" />
                                                              </div>
                                                                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control nombre" placeholder="Nombre"></asp:TextBox>
                                                            </div>
                                                           </div>
                                                          <div class="form-group">
                                                            <label class="sr-only" for="email">Email</label>
                                                            <div class="input-group">
                                                              <div class="input-group-addon">
                                                                  <img class="usuario" src="../Images/mensaje.jpg" alt="Alternate Text" />
                                                              </div>
                                                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control nombre" placeholder="Email"></asp:TextBox>
                                                            </div>
                                                          </div>
                                                          <div class="form-group">
                                                            <label class="sr-only" for="telefono">Telefono</label>
                                                            <div class="input-group">
                                                              <div class="input-group-addon">
                                                                  <img class="usuario" src="../Images/telefono.jpg" alt="Alternate Text" />
                                                              </div>
                                                                <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control nombre" placeholder="Telefono"></asp:TextBox>
                                                            </div>
                                                          </div>
                                                          <div class="form-group">
                                                              <asp:Label ID="lblMensaje" runat="server" CssClass="sr-only" Text="Mensaje"></asp:Label>
                                                            <textarea class="form-control nombre-mensaje" id="mensaje" rows="6" placeholder="Mensaje"></textarea>
                                                          </div>

                                                        <div class="form-group">
                                                            <div class="col-md-12 text-center">
                                                                <asp:Button ID="btnEnviar" runat="server" CssClass="btn btn-primary btn-lg enviar" Text="Enviar" />
                                                            </div>
                                                        </div>
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                            

                    </div>
                </div>
            </div>
        </section><br /><br />

        <div >

                <div class="col-sm-6" style="left: 1090px; top: -80px;  width:10%;">
                    <asp:Button ID="btnRegresar" runat="server" Text="Regresar" CssClass="action-button shadow animate boton" OnClick="btnRegresar_Click"/>
                </div>  
        </div>

    </div>

      <script src="../vendor/jquery/jquery.min.js"></script>
      <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</asp:Content>
