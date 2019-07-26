<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="swasobigua.mypages.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
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
            <div class="container-login100" style="background-image: url('images/fondo.jpg');"></div>
            <header>
                <nav class="navbar navbar-expand-md navbar-dark fixed-top  bg-dark">
                    
                    <a>
                        <asp:ImageButton ID="imgbtnHome" runat="server"  ImageUrl="images/asobigua-logo.png" OnClick="btnInicio_Click" Width="200px"/>
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active">
                             </li>
                            
                            <li class="nav-item">
                                
                            </li>
                        </ul>

                    </div>
                    <a id="username" class="navbar-brand" href="#"><asp:Label ID="lblUsuario" runat="server" Text="USUARIO TES LAGO NOMBRE"></asp:Label></a>
                    <asp:Button ID="btlCloseSession" runat="server" Text="Cerrar Sesión"  OnClick="btlCloseSession_Click" class="btn  btn-danger"/>
                </nav>
                <style>
                    body {
                        /* Ubicación de la imagen */
                        background-image: url("images/fondo.jpg");
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

                    <!-- Three columns of text below the carousel -->
                    <div class="row">
                        <div class="col-lg-6">
                            <img class="rounded-circle" src="images/mas.png" alt="Generic placeholder image" width="140" height="140">
                            <h2 style="color: ghostwhite">Crear Usuarios</h2>
                            <p style="color: ghostwhite">Es la opción para los Entrenadores, diseñada para la creación y asociación de usuarios, con el rol de entrenadores y deportistas. En dondé se puede asociar un deportista a un entrenador.</p>
                            <p>
                                <asp:Button ID="btnCrearUsuarios" runat="server" Text="Ver Detalle" OnClick="btnCrearUsuarios_Click" class="btn btn-primary btn-lg"/>
                                </p>
                               
                        </div>
                        <!-- /.col-lg-4 -->
                        <div class="col-lg-6">
                            <img class="rounded-circle" src="images/pool.png" alt="Generic placeholder image" width="140" height="140">
                            <h2 style="color: ghostwhite">Entrenos</h2>
                            <p style="color: ghostwhite">Es la opción diseñada para ver el historial de entrenos de cada deportista en base a su entrenador asociado, de forma que se pueda interpretar adecuadamente cada entreno.</p>
                            <p> <asp:Button ID="btnEntrenos" runat="server" Text="Ver Detalle" OnClick="btnEntrenos_Click" class="btn btn-primary btn-lg"/></p>
                        </div>
                        <!-- /.col-lg-4 -->

                    </div>
                    <!-- /.row -->


                    <!-- START THE FEATURETTES -->

                    <hr class="featurette-divider">

                    <div class="row featurette">
                        <div class="col-md-7">
                            <h2 class="featurette-heading" style="color: ghostwhite">DIGICUE</h2>
                            <p class="lead" style="color: ghostwhite">Dispositivo enfocado en el entrenamiento para el mejoramiento del desempeo del jugador, enfocao en la consistencia y precisión del golpe.</p>
                        </div>
                        <div class="col-md-5">
                            <img class="featurette-image img-fluid mx-auto" style="width: 300px; height: 300px;" alt="300x300" data-holder-rendered="true" src="images/digicue.jpg">
                        </div>
                    </div>

                    <hr class="featurette-divider">

                    <div class="row featurette">
                        <div class="col-md-7 order-md-2">
                            <h2 class="featurette-heading" style="color: ghostwhite">METAMOTION</h2>
                            <p class="lead" style="color: ghostwhite">El MetaMotion es un dispositivo portátil que ofrece monitoreo en tiempo real y continuo de datos de sensores ambientales y de movimiento.</p>
                        </div>
                        <div class="col-md-5 order-md-1">
                            <img class="featurette-image img-fluid mx-auto" style="width: 300px; height: 300px;" alt="300x300" data-holder-rendered="true" src="images/metamotion.jpg">
                        </div>
                    </div>


                    <hr class="featurette-divider">

                    <!-- /END THE FEATURETTES -->

                </div>
                <!-- /.container -->


                <!-- FOOTER -->
                <footer class="container">
                    <p class="float-right"><a href="#" style="color: ghostwhite">Ir a arriba</a></p>
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
