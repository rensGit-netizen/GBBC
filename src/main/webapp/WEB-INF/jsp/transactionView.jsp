<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%--    weergegeven titel in tabblad (elke keer aanpassen dus)--%>
    <title>GBBC</title>
    <link rel="stylesheet" href="css/basis.css" type="text/css"/>
    <link rel="stylesheet" href="css/transactionView.css" type="text/css"/>

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
                    <li><a class="nav-item" href="#">Over Ons</a></li>
                    <li><a class="nav-item" href="/open-account">Open Account</a></li>
                    <li><a class="nav-item" href="#">Service &amp; Contact</a></li>
                </ul>
            </div>
            <a href="/login">
                <button class="btn btn-outline-success" type="button">Uitloggen</button>
            </a>

    </div>
    </nav>
    </div>
    <!-- einde navbar -->
</header>

<%-- <section> = een sectie in de pagina--%>
<section>


    <%--Hier onze eigen functionaliteiten voor betreffende view--%>
    <div class="formulier">

        <form class="transactie" autocomplete="on" method="get" action="/transaction-confirmation"
              modelAttribute="newtransaction">
            <!--        TODO: waardes voor 'class', 'action' enz. nog controleren/aanpassen
                        TODO: waarde voor 'modelAttribute' nog controleren/aanpassen -->

            <h4>Overboeking</h4>
            <br>

            <dt class="rekening">
                <div class="rekeninghouderEnSaldo">
                    <h5 class="rekeninghouder"> Jan Janssens </h5>
                    <h5 class="saldo"> &euro; 4.321,98</h5>
                </div>
                <h6> GBBC Zakelijke rekening</h6>
                <h6> IBAN NL00GBBC0000000001</h6>
            </dt>


            <label>Bedrag</label> <br>
            <input class="field" path="firstname" type="text"/>
            <errors path="firstname" cssClass="error"/>
            <br>

            <label>Begunstigde</label><br/>
            <input class="field" path="lastname" type="text"/>
            <errors path="lastname" cssClass="error"/>
            <br>

            <label>Rekeningnummer (IBAN)</label><br/>
            <input class="field" path="bsn" type="text"/>
            <errors path="bsn" cssClass="error"/>
            <br>

            <label>Omschrijving of betalingskenmerk</label><br/>
            <input class="field" path="dateofbirth" type="text"/>
            <errors path="dateofbirth" cssClass="error"/>
            <br><br>

            <input class="submit" type="submit" value="Naar bevestigen" id="submit">
            <a href="/account-statement">
                <button class="annuleren" type="button">Annuleren</button>
            </a>
        </form>
    </div>


</section>


<%--footer info op alle pagina's hetzelfde--%>
<footer class="footer">
    <div>
        <nav class="navbar navbar-expand-lg navbar-light">
            <%--            Hier alle nagivatie links die nodig zijn op deze view--%>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav mb-auto mb-2 mb-lg-0">
                    <li><a class="nav-item" href="tel:+31612909463">Call our Customer Service</a></li>
                    <li><a class="nav-item" href="mailto:emily.pq.koo@gmail.com">Mail our Customer Service</a></li>
                    <li><a class="nav-item" href="https://goo.gl/maps/i1WJAbktm4S3RDYa9" target="_blank">Plan a
                        visit</a></li>
                </ul>
            </div>
    </div>
    </nav>
    </div>
</footer>
</body>