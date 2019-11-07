<#macro page>
    <!DOCTYPE html>
    <html lang="en" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html"
          xmlns="http://www.w3.org/1999/html">
    <head>
        <meta charset="UTF-8"/>
        <title>HotelApp</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
              integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
              crossorigin="anonymous"/>

        <script type="text/javascript" src="https://www.google.com/recaptcha/api.js" async="async"
                defer="defer"></script>

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
              integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
              crossorigin="anonymous">

        <style>
            body {
                background-image: url('https://s1.1zoom.me/big0/1000/431571-Kysb.jpg');
                background-repeat: no-repeat;
                background-size: cover;
            }

            #footer {
                position: relative;
                bottom: 0;
                width: 100%;

            }
        </style>
    </head>
    <body>
    <#include "navbar.ftl">
    <div class="container mt-5" style="height: auto">
        <#nested>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
            integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
            crossorigin="anonymous"></script>
    <footer id="footer">
        <div class="footer-copyright text-center py-3" style="color: white; font-weight: lighter">© 2019 Copyright Alex
            Karnei:
            <a href="https://github.com/alexkarnei?tab=repositories" style="color: wheat; font-weight: bold ">
                GitHub</a>
            <a href="https://www.facebook.com/alex.karnei" style="color: white; font-weight: lighter"><img
                        src="https://i.pinimg.com/originals/9e/b3/84/9eb384eb1d9d09e82bcef6852d38085c.png"
                        style="height: 30px; width: 30px;">Alex Karnei</a>
        </div>
    </footer>
    </body>
    </html>
</#macro>