<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%--    weergegeven titel in tabblad (elke keer aanpassen dus)--%>
    <title>GBBC</title>
    <link rel="stylesheet" href="css/basis.css" type="text/css"/>
    <link rel="stylesheet" href="css/accountStatementViewCSS.css" type="text/css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
            crossorigin="anonymous"></script>
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
    <div class="displaytable">
        <div class="headGrid">
            <div class="headText">
                <h3 style="padding-left: 15px; font-weight: bold">GBBC Basisrekening</h3>
            </div>
            <div class="centerTextleft">
                <h4 style="padding-left: 15px">huidig saldo:</h4>
                <h4>&euro; 9600,00</h4>
                <a href="/transaction" method = "get"><img src="images/overboekButton.jpg" alt="overboeken" class="imageSize"></a>
                <a href="/authorize" method = "get"><img src="images/machtigenButton.jpg" alt="machtiging" class="imageSize"></a>
            </div>
        </div>
        <div class="textTable">
            <div class="textGrid">
                <div class="textAllignLeft">Nespresso</div>
                <div class="textAllignRight">&euro; 43,70</div>
                <div class="textAllignLeft">Bagels & Beans</div>
                <div class="textAllignRight">&euro; 12,70</div>
                <div class="textAllignLeft">Samsung Galaxy</div>
                <div class="textAllignRight">&euro; 780,00</div>
                <div class="textAllignLeft">Brood en Meer</div>
                <div class="textAllignRight">&euro; 30,10</div>
                <div class="textAllignLeft">Jumbo West</div>
                <div class="textAllignRight">&euro; 220,05</div>
                <div class="textAllignLeft">Loon</div>
                <div class="textAllignRight">&euro; 4000,00</div>
                <div class="textAllignLeft">Ziektekosten</div>
                <div class="textAllignRight">&euro; 160,00</div>
                <div class="textAllignLeft">Ziektekosten</div>
                <div class="textAllignRight">&euro; 160,00</div><div class="textAllignLeft">Ziektekosten</div>
                <div class="textAllignRight">&euro; 160,00</div><div class="textAllignLeft">Ziektekosten</div>
                <div class="textAllignRight">&euro; 160,00</div><div class="textAllignLeft">Ziektekosten</div>
                <div class="textAllignRight">&euro; 160,00</div><div class="textAllignLeft">Ziektekosten</div>
                <div class="textAllignRight">&euro; 160,00</div><div class="textAllignLeft">Ziektekosten</div>
                <div class="textAllignRight">&euro; 160,00</div><div class="textAllignLeft">Ziektekosten</div>
                <div class="textAllignRight">&euro; 160,00</div>
            </div>
        </div>
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

