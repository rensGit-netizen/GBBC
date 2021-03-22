<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%--    weergegeven titel in tabblad (elke keer aanpassen dus)--%>
    <title>GBBC</title>
    <link rel="stylesheet" href="css/basis.css" type="text/css"/>
    <link rel="stylesheet" href="css/inlogview.css" type="text/css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
</head>

<%-- <body> = de inhoud van de webpagina (headings, paragraphs, images, hyperlinks, tables, lists, etc.)--%>
<body>
<header>
    <div>
        <%--        begin navbar --%>
        <nav class="navbar navbar-expand-md navbar-light">
            <%--            Hier alle nagivatie links die nodig zijn op deze view--%>
            <a href="/home" class="navbar-brand">
                <img src="../../../../images/logoGBBC.png" alt="logoGBBC" width="50" height="50"
                     class="d-inline-block align-text-bottom"/>
                Gold Bar Banking Co</a>
            <button class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#toggleMenu"
                    aria-controls="toggleMenu"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
            >
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="toggleMenu">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li><a class="nav-item" href="/home">Over Ons</a></li>
                    <li><a class="nav-item" href="/open-account">Open Account</a></li>
                    <li><a class="nav-item" href="https://goo.gl/maps/i1WJAbktm4S3RDYa9" target="_blank">Service &amp; Contact</a></li>
                </ul>
            </div>
    </div>
    </nav>
    </div>
    <!-- einde navbar -->
</header>
<%-- section> = een sectie in de pagina--%>
<section>
    <!--    <Hier onze eigen functionaliteiten voor betreffende view-->
    <div class="inlogPanel">
        <%--@elvariable id="employee" type="com"--%>
        <form:form class="gebruiker" autocomplete="on" method="post" modelAttribute="employee" action="/employeeControle"><%--@elvariable id="invalidLogin" type="com"--%>
            <h2>Werknemer Login bij GBBC</h2>
            <div class = "headimage"><img class = "picture" src="../../images/goldBarLogInLogo.jpg" alt="Open Account"></div>
            <label>Gebruikersnaam</label><br>
            <form:input type="text" path="user_name" class="field" placeholder="e-mailadres"/><br><br>
            <label>Wachtwoord</label><br>
            <form:password path="password" class="field" id="myPassword"/><br><br>
            <input type="checkbox" onclick="seePassword()" id="checkBox"><label style="padding-left: 20px">zichtbaar</label><br>
            <span style="margin-bottom: -15px"><p id="warningText">${invalidLogin}</p></span><br>
            <input type="checkbox" id="onthoudGebruikersnaam" name="onthoudGebruikersnaam">
            <label>Onthoud mijn gebruikersnaam</label><br><br>
            <input type="submit" value="Login" class="btn btn-warning submit">
            <button onclick="noMoneyMore()" class="btn btn-warning wachtwoordvergeten">Wachtwoord vergeten</button>
        </form:form>
    </div>
</section>


<%--footer info op alle pagina's hetzelfde--%>
<div id="footer">
    <%@include file="../jspf/footer.jspf"%>
</div>
<script>
    function noMoneyMore(){
        alert("Sorry, geld is nu van de bank");
    }
</script>
<script>
    function seePassword(){
        var x = document.getElementById("myPassword");

        if (document.getElementById("checkBox").checked){
            x.type = "text";
        }
        else {
            x.type = "password";
        }
    }
</script>
</body>