<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%--    weergegeven titel in tabblad (elke keer aanpassen dus)--%>
    <title>GBBC</title>
    <link rel="stylesheet" href="css/basis.css" type="text/css"/>
    <link rel="stylesheet" href="css/transactionConfirm.css" type="text/css"/>
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
                    <li><a class="nav-item" href="/open-account">Open nog een Account</a></li>
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
    <br/>

    <%--Hier onze eigen functionaliteiten voor betreffende view
    Dit is dummy text hieronder--%>
            <!--    <Hier onze eigen functionaliteiten voor betreffende view>-->
            <div class="accountinfo">
                <h3><strong>Bevestig Overboeking</strong></h3>
                <h5>Controleer de onderstaande gegevens</h5>
                <br>
                <div class="overboekinfo">
                    <h3>Bedrag: <i>&euro;32,50</i></h3>
                    <br>
                    <h3>Van</h3>
                    <div class="tekst">Emily Koo</div>
                    <div class="tekst">NL 05 GBBC 0108 7922 33</div>
                    <br>
                    <h3>Naar</h3>
                    <div class="tekst">Daan Zonderland</div>
                    <div class="tekst">NL 05 GBBC 0188 4500 22</div>
                    <br>
                    <h3>Datum van overboeken</h3>
                    <div class="tekst">12-03-2021</div>

                    <br>


                </div>
                <br>
                <a href="/transaction-succeeded">
                    <button class="btn btn-warning overboeken" type="button">Overboeken</button>
                </a>
                <a href="/transaction">
                    <button class="btn btn-warning annuleren" type="button">Annuleren</button>
                </a>
            </div>

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