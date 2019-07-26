<%@ Page Language="C#"  Async="true" AutoEventWireup="true" CodeBehind="crearusuarios.aspx.cs" Inherits="swasobigua.mypages.crearusuarios" %>

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
                <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-blue bg-dark">
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
                    <a id="username" class="navbar-brand" href="#">
                        <asp:Label ID="lblUsuario" runat="server" Text="USUARIO"></asp:Label></a>
                     <asp:Button ID="btlCloseSes" runat="server" Text="Cerrar Sesión"  OnClick="btlCloseSession_Click" class="btn  btn-danger"/>
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
                            <p>
                                <asp:TextBox ID="tbxName" runat="server" CssClass="form-control input-lg " placeholder="Nombres"></asp:TextBox>
                            </p>

                        </div>
                        <!-- /.col-lg-4 -->
                        <div class="col-lg-6">
                            <p>
                                <asp:TextBox ID="tbxLastname" runat="server" CssClass="form-control input-lg " placeholder="Apellidos"></asp:TextBox>
                            </p>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <p>
                                <asp:TextBox ID="tbxUsuario" runat="server" CssClass="form-control input-lg " placeholder="Usuario"></asp:TextBox>
                            </p>
                        </div>
                        <!-- /.col-lg-4 -->
                        <div class="col-lg-6">
                            <p>
                                <asp:TextBox ID="tbxMail" runat="server" CssClass="form-control input-lg " placeholder="Correo"></asp:TextBox>

                            </p>
                        </div>
                        <!-- /.col-lg-4 -->

                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <p> 
                                <asp:TextBox ID="tbxPassword1" runat="server" CssClass="form-control input-lg " placeholder="Clave" TextMode="Password"></asp:TextBox>
                            </p>

                        </div>
                        <!-- /.col-lg-4 -->
                        <div class="col-lg-6">
                            <p> 
                                <asp:Label ID="lblrol" runat="server" Text="Tipo:" Font-Bold="True" ForeColor="White"></asp:Label>
                            </p>
                            <p>
                                <asp:DropDownList ID="ddlRol" runat="server" CssClass="form-control" height="36px" OnSelectedIndexChanged="ddlRol_SelectedIndexChanged"  OnTextChanged="ddlRol_TextChanged" AutoPostBack="true">
                                    <asp:ListItem>ENTRENADOR</asp:ListItem>
                                    <asp:ListItem>JUGADOR</asp:ListItem>
                                </asp:DropDownList>
                            </p>
                        </div>
                        <!-- /.col-lg-4 -->

                    </div>

                    <div class="row">
                        <div class="col-lg-6">
                            <p> 
                                <asp:TextBox ID="tbxPassword" runat="server" CssClass="form-control input-lg " placeholder="Confirmar Clave" TextMode="Password"></asp:TextBox>
                            </p>

                        </div>
                        <!-- /.col-lg-4 -->
                        <div class="col-lg-6">
                            <p>
                                <asp:Button ID="btnCrear" runat="server" Text="Grabar" class="btn btn-primary btn-lg" OnClick="btnCrear_Click" />
                                
                            </p>
                        </div>
                        <!-- /.col-lg-4 -->

                    </div>
                    <!-- /.row -->


                    <!-- START THE FEATURETTES -->


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
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />



        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
        <script src="disenio/assets/js/vendor/popper.min.js"></script>
        <script src="disenio/dist/js/bootstrap.min.js"></script>
        <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
        <script src="disenio/assets/js/vendor/holder.min.js"></script>
         <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        </div>
    </form>
</body>
</html>
