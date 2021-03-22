<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%--    weergegeven titel in tabblad (elke keer aanpassen dus)--%>
    <title>GBBC</title>
    <link rel="stylesheet" href="css/basis.css" type="text/css"/>
    <link rel="stylesheet" href="css/inlogview.css" type="text/css"/>
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
            <a href="/login"><button class="btn btn-outline-success" type="button">Uitloggen</button></a>
    </div>
    </nav>
    </div>
    <!-- einde navbar -->
</header>

<%-- <section> = een sectie in de pagina--%>
<section>
    <!--    <Hier onze eigen functionaliteiten voor betreffende view-->
    <!--    Dit is dummy text hieronder>-->
    <div class="inlogPanel">
        <form class="koppelen" autocomplete="on" method="get" action="/account-overview" modelAttribute="newuser">
            <h2>Rekening koppelen</h2>
            <div class ="headimage"><img class = "picture" src="../../images/moneyChain.jpg" alt="Open Account"></div>
            <label for="rekeningnummer">Rekeningnummer</label><br>
            <input type="text" id="rekeningnummer" name="rekeningnummer" class="field"><br><br>
            <label for="beveiligingscode">Beveiligingscode</label><br>
            <input type="text" id="beveiligingscode" name="beveiligingscode" class="field"><br><br>
            <input type="submit" value="Koppelen" class="btn btn-warning submit">
            <button type="button" class="btn btn-warning wachtwoordvergeten">Annuleren</button>
        </form>
    </div>
<%--    <button class="btn btn-warning addbutton uitloggen" type="button"> Uitloggen</button>--%>
</section>

<%--footer info op alle pagina's hetzelfde--%>
<footer class="footer">
    <div>
        <nav class="navbar navbar-expand-sm navbar-light">
            <%--            Hier alle nagivatie links die nodig zijn op deze view--%>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav mb-auto mb-2 mb-lg-0">
                    <li><a class="nav-item" href="tel:+31612909463">Bel Ons</a></li>
                    <li><a class="nav-item" href="mailto:emily.pq.koo@gmail.com">Mail Ons</a></li>
                    <li><a class="nav-item" href="https://goo.gl/maps/i1WJAbktm4S3RDYa9" target="_blank">Koffie? <em>Hier kun je ons vinden</em></a></li>
                </ul>
            </div>
    </div>
    </nav>
    </div>
</footer>
</body>