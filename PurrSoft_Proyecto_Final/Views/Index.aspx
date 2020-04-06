<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Views/PurrSoft.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PurrSoft_Proyecto_Final._Default" %>

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
        <div class="carousel-item active" style="background-image: url('http://placehold.it/1900x1080')">
          <div class="carousel-caption d-none d-md-block">
            <h3 class="tamañoScroll">First Slide</h3>
            <p>This is a description for the first slide.</p>
          </div>
        </div>
        <!-- Slide Two - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('http://placehold.it/1900x1080')">
          <div class="carousel-caption d-none d-md-block">
            <h3>Second Slide</h3>
            <p>This is a description for the second slide.</p>
          </div>
        </div>
        <!-- Slide Three - Set the background image for this slide in the line below -->
        <div class="carousel-item" style="background-image: url('http://placehold.it/1900x1080')">
          <div class="carousel-caption d-none d-md-block">
            <h3>Third Slide</h3>
            <p>This is a description for the third slide.</p>
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
  
    <div class=" formulario  col-4" style="left: 1099px; top: -405px; width: 247px; height: 342px"><br />
        <form class=" col-xs-offset-10 col-xs-2" style="left: -400px; top: 44px; width: 21%; height: 255px"">
            <div class="form-group ttamaño">
                <h4 class="ingreso">INGRESAR</h4><br />
                <label for="exampleInputEmail1">Tipo Documento</label><br />
                <asp:DropDownList ID="ddlTipoDoc" runat="server" Height="33px" Width="90px">
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

    


    <asp:Label ID="lblMensajeIngreso" runat="server" Text="Label" BorderStyle="Double"></asp:Label>
   
    <!-- Features Section -->
        
    <div class="row">
      <div class="col-lg-6 tamañoTexto" style="left: 30px; top: -290px;">
        <h2>Modern Business Features</h2>
        <p>The Modern Business template by Start Bootstrap includes:</p>
        <ul>
          <li>
            <strong>Bootstrap v4</strong>
          </li>
          <li>jQuery</li>
          <li>Font Awesome</li>
          <li>Working contact form with validation</li>
          <li>Unstyled page elements for easy customization</li>
        </ul>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis, omnis doloremque non cum id reprehenderit, quisquam totam aspernatur tempora minima unde aliquid ea culpa sunt. Reiciendis quia dolorum ducimus unde.</p>
      </div>
      <div class="col-lg-6"  style="left: 20px; top: -290px"">
           <img src="../Images/Icono_usuario.jpg" />
      </div>
    </div>

     

     <!-- Portfolio Section -->
   <div class="container" style="margin-top:-220px;">
    <h1>Portfolio Heading</h1> 
    <div class="row">
      <div class="col-lg-4 col-sm-6 portfolio-item" >
        <div class="card h-100">
          <img class="card-img-top" src="http://placehold.it/700x400" alt="">
          <div class="card-body">
            <h4 class="card-title">
                <span class="tamañoTexto">Project One</span>
            </h4><br />
            <p class="card-text tamañoContenido">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur eum quasi sapiente nesciunt? Voluptatibus sit, repellat sequi itaque deserunt, dolores in, nesciunt, illum tempora ex quae? Nihil, dolorem!</p>
          </div>
        </div>
      </div> 
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <img class="card-img-top" src="http://placehold.it/700x400" alt="">
          <div class="card-body">
            <h4 class="card-title">
                <span class="tamañoTexto">Project Two</span>
            </h4><br />
            <p class="card-text tamañoContenido">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-sm-6 portfolio-item">
        <div class="card h-100">
          <img class="card-img-top" src="http://placehold.it/700x400" alt="">
          <div class="card-body">
            <h4 class="card-title">
                <span class="tamañoTexto">Project Three</span>
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
