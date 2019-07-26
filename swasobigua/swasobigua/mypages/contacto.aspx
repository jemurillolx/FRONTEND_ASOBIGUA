<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contacto.aspx.cs" Inherits="swasobigua.mypages.contacto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="disenio/logo.ico">

    <title>Página Principal - ASOBIGUA</title>

    <!-- Bootstrap core CSS -->
    <link href="disenio/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="disenio/docs/4.0/examples/carousel.css" rel="stylesheet">
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <div class="container-login100" style="background-image: url('images/fondo2.jpg');"></div>
                <header>
                    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
                        
                    <a>
                        <asp:ImageButton ID="imgbtnHome" runat="server"  ImageUrl="images/asobigua-logo.png" Width="200px"/>
                    </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarCollapse">
                            <ul class="navbar-nav mr-auto">
                                <li class="nav-item">

                                    <asp:Button ID="btnlogin" runat="server" Text="Iniciar Sesión" OnClick="btnlogin_Click" class="btn btn-primary btn-lg"/>
                                </li>
                                
                            </ul>

                        </div>
                    </nav>
                    <style>
                        body {
                            /* Ubicación de la imagen */
                            background-image: url("images/fondo2.jpg");
                            /* Para dejar la imagen de fondo centrada, vertical y

              horizontalmente */
                            background-position: center center;
                            /* Para que la imagen de fondo no se repita */
                            background-repeat: no-repeat;
                            /* La imagen se fija en la ventana de visualización para que la altura de la imagen no supere a la del contenido */
                            background-attachment: fixed;
                            /* La imagen de fondo se reescala automáticamente con el cambio del ancho de ventana del navegador */
                            background-size: cover;
                        }
                    </style>
                </header>

                <main role="main">

                    <div>
                        <br>
                        <br>
                        <br>
                    </div>
                    <!-- Marketing messaging and featurettes
      ================================================== -->
                    <!-- Wrap the rest of the page in another container to center all the content. -->

                    <div class="container marketing">



                        <!-- START THE FEATURETTES -->

                        <hr class="featurette-divider">

                        <div class="row featurette">
                            <div class="col-md-7">
                                <h2 class="featurette-heading" style="color: ghostwhite">Contacto</h2>
                                <br>
                                <p class="lead" style="color: ghostwhite">
                                    Dirección: 10 Ave. Zona 5 Estadio Nacional Doroteo Gamuch Flores (Palacio Central).
                                <br>
                                    <br>
                                    Télefonos: 2250-0749
                                <br>
                                    2250-0763
                                <br>
                                    <br>
                                    Página web: 
                <a href="http://www.asobigua.org.gt">http://www.asobigua.org.gt</a>
                                </p>
                            </div>
                            <div class="col-md-5">
                                <img class="featurette-image img-fluid mx-auto" style="width: 300px; height: 300px;" alt="300x300" data-holder-rendered="true" src="images/asobigua.jpg">
                            </div>
                        </div>


                        <hr class="featurette-divider">

                        <div class="row featurette">
                            <div class="col-md-7">
                                <a href="https://www.facebook.com/Asobigua/">
                                    <img class="_6voz _7f2d img" src="images/fb.png" alt="Síguenos en Facebook" style="width: 24px; height: auto; display: inline; margin-right: 20px;"></a>
                            </div>
                            <!-- /END THE FEATURETTES -->

                        </div>
                        <!-- /.container -->


                        <!-- FOOTER -->


                        <footer class="container">
                            <p style="color: ghostwhite">&copy; Todos los derechos reservados.</p>
                        </footer>
                </main>
            </div>
            <!-- Bootstrap core JavaScript
    ================================================== -->
            <!-- Placed at the end of the document so the pages load faster -->
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
            <script src="disenio/assets/js/vendor/popper.min.js"></script>
            <script src="disenio/dist/js/bootstrap.min.js"></script>
            <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
            <script src="disenio/assets/js/vendor/holder.min.js"></script>
            </div>
        </form>
    </body>
</html>
