<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%--    weergegeven titel in tabblad--%>
    <title>GBBC</title>
    <%@include file="../jspf/head.jspf"%>
    <link rel="stylesheet" href="css/success.css" type="text/css"/>
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
                    <li><a class="nav-item" href="/open-account">Nog meer geld?</a></li>
                    <li><a class="nav-item" href="https://goo.gl/maps/i1WJAbktm4S3RDYa9" target="_blank">Service &amp; Contact</a></li>
                </ul>
            </div>
                <a href="/login"><button class="btn btn-outline-success" type="button">Login</button></a>
    </div>
    </nav>
    </div>
    <!-- einde navbar -->
</header>
<%-- <section> = een sectie in de pagina--%>
<section>
        <div class="informationField pagination justify-content-center">
            <h1 >Welkom bij GBBC ${openAccount.first_name}!</h1>
        </div>
        <!--    <Hier onze eigen functionaliteiten voor betreffende view>-->
        <div class = "accountinfo">
            <h4>De gegevens van uw nieuwe rekening</h4>
            <div class = "headimage"><img class = "picture" src="../../../../images/success.jpg" alt="Succes!"></div>
            <table class = "accounttable table table-sm table-hover">
                <tr>
                    <th>Naam Rekening</th>
                    <td>Gold Bar Banking Co. ${openAccount.customer_type}</td>
                </tr>
                <tr>
                    <th>Tenaamstelling</th>
                    <td><b>${openAccount.title}</b> ${openAccount.first_name} ${openAccount.last_name}</td>
                </tr>
                <tr>
                    <th>BSN</th>
                    <td>${openAccount.bsn}</td>
                </tr>
                <tr>
                    <th>Adres</th>
                    <td>${openAccount.street}</td>
                </tr>
                <tr>
                    <th></th>
                    <td>${openAccount.postal_code} ${openAccount.city}</td>
                </tr>
                <tr>
                    <th></th>
                    <td>${openAccount.country}</td>
                </tr>
                <tr>
                    <th>Soort rekening</th>
                    <td>${openAccount.customer_type}</td>
                </tr>
                <tr>
                    <th>Rekeningnummer (IBAN)</th>
                    <td>${openAccount.iban}<em>Log in om uw IBAN te zien</em></td>
                </tr>
                <tr>
                    <th>Gebruikersnaam</th>
                    <td>${openAccount.user_name}</td>
                </tr>
                <tr>
                    <th>Wachtwoord</th>
                    <td><i>${openAccount.password}</i></td>
                </tr>
                <tr>
                    <th>Gemachtigde</th>
                    <td>${openAccount.gemachtigde}</td>
                </tr>
            </table>
            <br>
            <div class="text-center">
            <a href="/login"><button class ="btn btn-warning" type="button">Ik wil mijn geld zien!</button></a>
        </div></div>
    </section>
<%--footer info op alle pagina's hetzelfde--%>
<div id="footer">
    <%@include file="../jspf/footer.jspf"%>
</div>
</body>