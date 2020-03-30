<%@ Page Title="" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="Contactanos.aspx.cs" Inherits="PurrSoft_Proyecto_Final.Views.Contactanos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



<link href="../css/Contactanos.css" rel="stylesheet" />


    <div class="Container" style="margin-top: 50px;">
        <section class="content4 cid-rArHNGGDR4" id="content04-1q">
            <img class="contact1" src="../Images/contact1.jpg" alt="Mobirise" style="margin-top: 65px;">


            <div class="container">

                


                <div class="row justify-content-md-end">
                    <div class="col-lg-6 col-md-12">
                            

                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="well well-sm">
                                        <form class="form-horizontal" method="post">
                                            <fieldset>
                                                <legend class="text-center header">Contactanos</legend>

                                                          <div class="form-group">
                                                            <label class="sr-only" for="name">Nombre</label>
                                                            <div class="input-group">
                                                              <div class="input-group-addon">
                                                                <img class="usuario" src="../Images/usuario.jpg" alt="Alternate Text" />
                                                              </div>
                                                              <input type="text" class="form-control" id="nombre" placeholder="Nombre">
                                                            </div>
                                                          </div>
                                                          <div class="form-group">
                                                            <label class="sr-only" for="email">Email</label>
                                                            <div class="input-group">
                                                              <div class="input-group-addon">
                                                                  <img class="usuario" src="../Images/mensaje.jpg" alt="Alternate Text" />
                                                              </div>
                                                              <input type="text" class="form-control" id="email" placeholder="Email">
                                                            </div>
                                                          </div>
                                                          <div class="form-group">
                                                            <label class="sr-only" for="telefono">Telefono</label>
                                                            <div class="input-group">
                                                              <div class="input-group-addon">
                                                                  <img class="usuario" src="../Images/telefono.jpg" alt="Alternate Text" />
                                                              </div>
                                                              <input type="text" class="form-control" id="telefono" placeholder="Telefono">
                                                            </div>
                                                          </div>
                                                          <div class="form-group">
                                                            <label class="sr-only" for="mensaje">Mensaje</label>
                                                            <textarea class="form-control" id="mensaje" rows="6" placeholder="Mensaje"></textarea>
                                                          </div>

                                                <div class="form-group">
                                                    <div class="col-md-12 text-center">
                                                        <button type="submit" class="btn btn-primary btn-lg">Enviar</button>
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
                    <button type="submit" class="action-button shadow animate gray">Regresar</button>
                </div>
            </div>

    </div>

      <script src="../vendor/jquery/jquery.min.js"></script>
      <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</asp:Content>
