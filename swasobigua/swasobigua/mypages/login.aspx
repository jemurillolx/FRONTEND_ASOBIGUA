
<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeBehind="login.aspx.cs"  Inherits="swasobigua.mypages.login"   %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
   
    <script src="//code.jquery.com/jquery-2.1.1.min.js"></script>
<script type='text/javascript'>
    /*$(function () {
      // When a Button is clicked on your page, disable everything and display your loading element
      $(':button,:submit').click(function(){
          // Disable everything
          $('*').prop('disabled',true);
          // Display your loading image (centered on your screen), need the url of public directory/image.gif to simulate the animation
          $('body').append("<img style='top: 0%; position: absolute; height: 1000px; width: 2000px;background: black;left: 0%;' src='http://localhost:50960/mypages/images/load.gif' />");
      });
    });*/
</script>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"></asp:ScriptManager>
        <div>

            <div class="limiter">
                <div class="container-login100" style="background-image: url('images/bg-01.jpg');">
                    <div class="wrap-login100">
                        <form class="login100-form validate-form">
                            <span class="login100-form-logo">
                                <img src="images/asobigua.jpg" height="172px" width="140px">

                                <img src="images/cdag.jpg" height="172px" width="140px">
                            </span>
                            <span class="login100-form-title p-b-34 p-t-27">Inicio de Sesión
                            </span>

                            <div class="wrap-input100 validate-input" data-validate="Enter username">
                                <asp:TextBox ID="tbxUser" runat="server" CssClass="form-control input-lg" placeholder="Usuario"   ></asp:TextBox>
                            </div>

                            <div class="wrap-input100 validate-input" data-validate="Enter password">
                                <asp:TextBox ID="tbxClave" runat="server" CssClass="form-control input-lg " placeholder="clave"  TextMode="Password"></asp:TextBox>
                       
                                </div>
                            <div class="container-login100-form-btn">
                                <asp:Button id="btnLogin" class="login100-form-btn" Text="Iniciar Sesión"  OnClick="btn_clicklogin2"  runat="server" />
                            </div>
                            <div class="container-login100-form-btn">
                                <asp:Button id="btnContacto" class="login100-form-btn" Text="Contacto"  OnClick="btnContacto_Click" runat="server" />
                            </div>
                            <span style="color: #f2f9fa; font-weight: bold">&copy; Todos los derechos reservados.</span>
                        </form>
                    </div>
                </div>
            </div>




            <!--===============================================================================================-->
            <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
            <!--===============================================================================================-->
            <script src="vendor/animsition/js/animsition.min.js"></script>
            <!--===============================================================================================-->
            <script src="vendor/bootstrap/js/popper.js"></script>
            <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
            <!--===============================================================================================-->
            <script src="vendor/select2/select2.min.js"></script>
            <!--===============================================================================================-->
            <script src="vendor/daterangepicker/moment.min.js"></script>
            <script src="vendor/daterangepicker/daterangepicker.js"></script>
            <!--===============================================================================================-->
            <script src="vendor/countdowntime/countdowntime.js"></script>
            <!--===============================================================================================-->
            <script src="js/main.js"></script>
            <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


        </div>
    </form>
    <script>
       
        function test ()
        {
            debugger
            var s =  {  username: "trainer1", password:"asdf1234" } 
            fetch('https://mocktesisasobiguaapi.azurewebsites.net/v1/users/login', { // the URI
                method: 'POST', // the method
                body: JSON.stringify(s) // the body
})
  .then(response => {
    // we received the response and print the status code
    console.log(response.status)
    // return response body as JSON
    return response.json()
  })
  .then(json => {
    // print the JSON
    console.log(json)
  })
        }
    </script>
</body>
</html>

