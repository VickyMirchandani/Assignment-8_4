<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Assignment8_4.aspx.cs" Inherits="Assignment8_4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pageloader with Jumbotron</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
    .js div#preloader
    { position: fixed;
      left: 0;
      top: 0; 
      z-index: 999;
      width: 100%;
      height: 100%;
      overflow: visible;
      background: #333 url('http://files.mimoymima.com/images/loading.gif') no-repeat center center; }


        </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="js"></div>
         <%-- Define Jumbotron Class and add a list --%>
      <div class="jumbotron">
          <%-- Define a button with show/hide functionality. --%>
      <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Show/Hide</button>
      <div id="demo" class="collapse">
      <%-- Defie a list --%>
    <ul>
        <li><h3>Course Contents</h3></li>
        <li>HTML </li>
        <li>JavaScript</li>
        <li>Jquery</li>
        <li>Bootstrap</li>
        <li>Angular JS</li>
  </ul>

  </div>
  
</div>
<div id="preloader"></div>
      <script>
            jQuery(document).ready(function ($) {

                // site preloader -- also uncomment the div in the header and the css style for #preloader
                $(window).load(function () {
                    $('#preloader').fadeOut('slow', function () { $(this).remove(); });
                });

            });

     </script>
     </form>
</body>
</html>
