<%@ Page Language="C#"  Async="true"  AutoEventWireup="true" CodeBehind="entrenos.aspx.cs" Inherits="swasobigua.mypages.entrenos" %>

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
                <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-blue bg-dark" >
                    <a>
                        <asp:ImageButton ID="imgbtnHome" runat="server"  ImageUrl="images/asobigua-logo.png"  OnClick="btnInicio_Click" Width="200px"/>
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
                    <asp:Button ID="btnCerrarSesion" runat="server" Text="Cerrar Sesión" OnClick="btlCloseSession_Click"   class="btn  btn-danger"/>
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
                                <asp:Label ID="lbljugador" runat="server" Text="Seleccione un Jugador" Font-Bold="True" ForeColor="White"></asp:Label>
                            </p>

                        </div>
                        <!-- /.col-lg-4 -->
                        <div class="col-lg-6">
                            <p>
                                <asp:DropDownList ID="ddlPlayer" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlPlayer_SelectedIndexChanged"  AllowPaging="true"
              PageSize="5" Height="36px" AutoPostBack="true">
                                    <asp:ListItem>JUGADOR 1</asp:ListItem>
                                </asp:DropDownList>
                            </p>
                        </div>
                        <!-- /.col-lg-4 -->

                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <p>
                                <asp:GridView runat="server" ID="tbtiros" CssClass="table table-striped" GridLines="None"
                                    AutoGenerateColumns="False"  AllowPaging="true" CellPadding="10" OnPageIndexChanging="tbtiros_PageIndexChanging">
                                    <Columns>
                                        <asp:BoundField DataField="id" HeaderText="ID" Visible="false" />
                                         <asp:BoundField DataField="shot" HeaderText="Tiro" />
                                        <asp:BoundField DataField="timeStamp" HeaderText="Fecha Hora" />
                                        <asp:BoundField DataField="trainer" HeaderText="Entrenador" />
                                        <asp:TemplateField HeaderText="Seleccionar">
                                            <ItemTemplate>
                                                <asp:ImageButton ID="ImageButton1" runat="server" Height="86px" ImageUrl="~/mypages/images/pool.png" OnClick="ImageButton1_Click" Width="97px" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                       

                                    </Columns>
                                    <RowStyle CssClass="cursor-pointer" BackColor="#339933" />
                                </asp:GridView>
                            </p>
                        </div>
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
