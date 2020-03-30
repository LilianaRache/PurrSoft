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
            <h3 class="tamañoScroll, colorL">Bienvenidos</h3>
            <p class="colorL">este es el primer vistazo a la </p>
          </div>
        </div>
        <!-- Slide Two - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('../Images/dactp.jpg')">
          <div class="carousel-caption d-none d-md-block">
            <h3 class="colorL" >Funciones</h3>
            <p class="colorL">Nuestra pagina web funciona</p>
          </div>
        </div>
        <!-- Slide Three - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('../Images/difrentes_ani.jpg')">
          <div class="carousel-caption d-none d-md-block">
            <h3 class="colorL">Porque se hizo</h3>
            <p class="colorL">Se hizo para suplir una necesidad</p>
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
    
    <div class=" formulario  col-4" style="left: 1099px; top: -405px; width: 247px; height: 342px"><br />
        <form class=" col-xs-offset-10 col-xs-2" style="left: -400px; top: 44px; width: 21%; height: 255px"">
            <div class="form-group ttamaño">
                <h4 class="ingreso">INGRESAR</h4><br />
                <label for="exampleInputEmail1">Tipo Documento</label><br />
                <asp:DropDownList ID="DropDownList1" runat="server" Height="33px" Width="54px">
                    <asp:ListItem>CC</asp:ListItem>
                    <asp:ListItem>TI</asp:ListItem>
                    <asp:ListItem>CE</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group ttamaño">
                <label for="exampleInputEmail1">Numero de documento</label>
                <input type="text" class="form-control ttamaño" id="" placeholder="Numero" style="width: 104%; height: 42px">
            </div>

            <div class="form-group ttamaño">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control ttamaño" id="exampleInputPassword1" placeholder="Password" style="width: 104%; height: 41px">
            </div>

            <div class="row">

                <div class="col-sm-6" style="left: 7px; top: 6px; width:31%;">
                    <button type="submit" class="action-button shadow animate green">Iniciar</button>
                </div>
            </div><br />
        </form>
    </div>
 
   
     

     <!-- Portfolio Section -->
   <div class="container" style="margin-top:-220px;">
    <h1 class="col text-center">Sistema de informacion</h1> 
    <div class="row">
      <div class="col-lg-4 col-sm-6 portfolio-item" >
        <div class="card h-100">
          <img class="card-img-top" src="../Images/dacp.jpg" alt="">
          <div class="card-body">
            <h4 class="card-title">
                <span class="tamañoTexto">Funcionalidad</span>
            </h4><br />
            <p class="card-text tamañoContenido">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>
          </div>
        </div>
      </div> 
      <div class="col-lg-4 col-sm-6 portfolio-item"> 
        <div class="card h-100">
          <img class="card-img-top" src="../Images/pyg.jpg" alt="">
          <div class="card-body">
            <h4 class="card-title">
                <span class="tamañoTexto">Alcances</span>
            </h4><br />
            <p class="card-text tamañoContenido">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
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
            <p class="card-text tamañoContenido ">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos quisquam, error quod sed cumque, odio distinctio velit nostrum temporibus necessitatibus et facere atque iure perspiciatis mollitia recusandae vero vel quam!</p>
          </div>
        </div>
      </div>
    </div>
        </div>

      <script src="../vendor/jquery/jquery.min.js"></script>
      <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    
</asp:Content>