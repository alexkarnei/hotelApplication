<#macro page>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <title>HotelApp</title>
        <#--        <link rel="stylesheet" href="/static/style.css"/>-->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"/>

        <script type="text/javascript" src="https://www.google.com/recaptcha/api.js" async="async" defer="defer"></script>

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <style>
            html {
                position: relative;
                min-height: 100%;
            }
            body {
                margin-bottom: 60px;
            }
            #footer a{color:#000;}
            #footer a:hover{color:#ff0000;text-decoration:none;}
            #footer {
                position: absolute;
                bottom: 0;
                width: 100%;
                height: 60px;
                background-color: #a9a9a9;
            }
            .footer-menu{float:left;}
            .footer-menu ul{list-style:none;margin:0;padding:15px;}
            .footer-menu ul li{display:inline-block; color: dodgerblue}
            .footer-menu ul li+li::before{content:"|";display:inline-block;margin:0 6px 0 4px;vertical-align:1px;}
            .footer-rights{float:right; padding: 15px;}
        </style>
    </head>
    <body>

    <#include "navbar.ftl">

    <div class="container mt-5">
        <#nested>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <footer id="footer">
        <div class="container">
            <div class="footer-menu">
                <ul>
                    <li><a href="privacy.ftl">Privacy Policy</a></li>
                    <li><a href="/about">About Us</a></li>
                    <li><a href="/contact">Contact Us</a></li>
                </ul>
            </div>
            <div class="footer-rights">
                Copyright &copy; 2019. All rights reserved.
            </div>
        </div>
    </footer>
    </body>
    </html>
</#macro>