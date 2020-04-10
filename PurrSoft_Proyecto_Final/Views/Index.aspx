<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PurrSoft_Proyecto_Final._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="../css/Index.css" type="text/css" media="screen" />
    
   
       
   <header>
    <div id="carouselExampleIndicators" class="carousel slide col-10 tamañoTexto" data-ride="carousel" style="left: -12px; top: 0px">
      <ol class="carousel-indicators" style="left: 12px; right: 82px; bottom: -11px; width: 63%; height: 44px">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active" style="width: 25px; height: 11px"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1" style="width: 27px; height: 13px"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2" style="width: 28px; height: 12px"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <!-- Slide One - Set the background image for this slide in the line below -->
        <div class="carousel-item active" style="background-image: url('../Images/docp1.jpg')">
          <div class="carousel-caption d-none d-md-block">
            <h3 class="tamañoScroll, colorL" style="font-size:30px"><b>Bienvenidos</b></h3>
            <p class="colorL letraBanner"><em>Cuidamos a tu consentido con amor</em> </p>
          </div>
        </div>
        <!-- Slide Two - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('../Images/dactp.jpg')">
          <div class="carousel-caption d-none d-md-block">
            <h3 class="colorL" style="font-size:30px"> <b>Atencion</b></h3>
            <p class="colorL letraBanner"><em>Manejamos horario de atencion las 24 horas</em> </p>
          </div>
        </div>
        <!-- Slide Three - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('../Images/difrentes_ani.jpg')">
          <div class="carousel-caption d-none d-md-block">
                  <h3 class="colorL" style="font-size:30px"> <b>Servicios</b></h3>
            <p class="colorL letraBanner"> <em>Ofrecemos los mejores servicios para el cuidado de tu mascota</em></p>
          </div>
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </header>
  
    
    <!--login -->
    
    <div class=" formulario  col-4" style="left: 1100px; top: -406px; width: 247px; height: 342px"><br />
        <form class=" col-xs-offset-10 col-xs-2" style="left: -400px; top: 44px; width: 21%; height: 255px"">
            <div class="form-group ttamaño">
                <h4 class="ingreso">INGRESAR</h4><br />
                <label for="exampleInputEmail1">Tipo Documento</label><br />
                <asp:DropDownList ID="ddlTipoDoc" runat="server" Height="33px" Width="88px">
                    <asp:ListItem>Seleccionar</asp:ListItem>
                    <asp:ListItem>CC</asp:ListItem>
                    <asp:ListItem>TI</asp:ListItem>
                    <asp:ListItem>CE</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group ttamaño">
                <label for="exampleInputEmail1">Numero de documento</label>
                <asp:TextBox  ID ="txtNumeroDocumento" runat="server" CssClass="form-control ttamaño" require="require"></asp:TextBox>
            </div>

            <div class="form-group ttamaño">
                <label for="exampleInputPassword1">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control ttamaño" style="width: 104%; height: 41px" TextMode="Password" require="require"></asp:TextBox>
            </div>

            <div class="row">

                <div class="col-sm-6" style="left: 7px; top: 6px; width:31%;">
                    <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" CssClass="action-button shadow animate green" OnClick="btnIngresar_Click" />
                </div>

            </div><br />
        </form>
    </div>
            
     <!-- Portfolio Section -->
   <div class="container" style="margin-top:-220px;">
    <h1 class="col text-center" style="font-size:40px">Nuestros Servicios</h1> <br />
    <div class="row">
      <div class="col-lg-4 col-sm-6 portfolio-item" >
        <div class="card h-100">
          <img class="card-img-top" src="../Images/dacp.jpg" alt="">
          <div class="card-body">
            <h4 class="card-title">
                <span class="tamañoTexto">Que hacemos</span>
            </h4><br />
            <p class="card-text tamañoContenido">
                Contamos con servicio de hospitalización 24 horas, el cual se presta a aquellos consentidos que requieren un tratamiento médico y/o quirúrgico con una duración superior a 24 
            </p>
          </div>
        </div>
      </div> 
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <img class="card-img-top" src="../Images/pyg.jpg" alt="">
          <div class="card-body">
            <h4 class="card-title">
                <span class="tamañoTexto" >Servicios que ofrecemos</span>
            </h4><br />
            <p class="card-text tamañoContenido">
              <ul>
                  <li style="font-size:14px">
                       Hospitalización con monitoreo constante.<br />
                  </li>
                  <li style="font-size:14px">
                         Laboratorio. <br />
                  </li>
                  <li style="font-size:14px">
                      Ecografias. <br />
                  </li>
                  <li style="font-size:14px">
                        Radiologia. <br />   
                  </li>
                  <li style="font-size:14px">
                      Áreas de hospitalización solo para gatos.</p>
                  </li>

              </ul>   
            </p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <img class="card-img-top" src="../Images/gato_doct.jpg" alt="">
          <div class="card-body">
            <h4 class="card-title">
                <span class="tamañoTexto">Objetivo</span>
            </h4><br />
            <p class="card-text tamañoContenido ">Prestar y mejorar los servicios médicos veterinarios a todas las especies, por medio de talento humano de calidad, apoyados con equipos de última generación que garanticen veracidad en los diagnósticos y los procedimientos necesarios para el tratamiento de las enfermedades de nuestros pacientes para la satisfacción y conformidad de los propietarios de mascotas.</p>
          </div>
        </div>
      </div>
    </div>
        </div>

      <script src="../vendor/jquery/jquery.min.js"></script>
      <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

     <script src="../js/sweetalert2.all.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="../js/Alerts.js"></script>
    
</asp:Content>
