<%--@elvariable id="customerSession" type="com.gbbc.webapplication.beans.Customer"--%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%--    weergegeven titel in tabblad--%>
    <title>GBBC</title>
    <link rel="stylesheet" href="css/basis.css" type="text/css"/>
    <link rel="stylesheet" href="css/accountOverviewView.css" type="text/css"/>
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
                <a href="/logOut"><button class="btn btn-outline-success" type="button">Uitloggen</button></a>
    </div>
    </nav>
    </div>
    <!-- einde navbar -->
</header>

<%-- <section> = een sectie in de pagina--%>
<section>
    <div class="informationField">
        <c:if test="${not empty customerSession}">
        <H1>Welcome ${customerSession.first_name} !</H1>
        </c:if>
        <H2>${infopanel}</H2>
    </div>

    <%--Hier onze eigen functionaliteiten voor betreffende view--%>
    <!--        Hier onze eigen functionaliteiten voor betreffende view -->
    <h2 class="overzicht"><strong>Overzicht</strong></h2>
    <div class="bankrekeningoverzicht">
        <dl class="rekeninglijst">
            <a href="/account-statement"> <!--MOET DOORVERWIJZEN NAAR het rekeningoverzicht ("/account-statement")-->
                <dt class="rekening">
                    <div class="typeEnSaldo">
                        <h4 class="type"> Zakelijke rekening </h4>
                        <h4 class="saldo"> &euro; 4.321,98</h4>
                    </div>
                    naam rekening<br>
                    naam rekeninghouder 1<br>
                    naam rekeninghouder 2<br>
                    IBAN<br>
                </dt>
                <br>
            </a>

            <a href="/account-statement"> <!--MOET DOORVERWIJZEN NAAR het rekeningoverzicht ("/account-statement")-->
                <dt class="rekening">
                    <div class="typeEnSaldo">
                        <h4 class="type"> Basisrekening </h4>
                        <h4 class="saldo"> &euro; 4.321,98</h4>
                        <!-- voor EURO-teken:  &euro;     [ €-teken (alt+0128) WERKT NIET ] -->
                    </div>
                    naam rekening<br>
                    naam rekeninghouder 1<br>
                    naam rekeninghouder 2<br>
                    IBAN<br>
                </dt>
                <br>
            </a>

            <a href="/account-statement"> <!--MOET DOORVERWIJZEN NAAR het rekeningoverzicht ("/account-statement")-->
                <dt class="rekening">
                    <div class="typeEnSaldo">
                        <h4 class="type"> Zakelijke rekening </h4>
                        <h4 class="saldo"> &euro; 987.654,32</h4>
                    </div>
                    naam rekening<br>
                    naam rekeninghouder 1<br>
                    naam rekeninghouder 2<br>
                    IBAN<br>
                </dt>
                <br>
            </a>
            <a href="/account-statement"> <!--MOET DOORVERWIJZEN NAAR het rekeningoverzicht ("/account-statement")-->
                <dt class="rekening">
                    <div class="typeEnSaldo">
                        <h4 class="type"> Zakelijke rekening </h4>
                        <h4 class="saldo"> &euro; 987.654,32</h4>
                    </div>
                    naam rekening<br>
                    naam rekeninghouder 1<br>
                    naam rekeninghouder 2<br>
                    IBAN<br>
                </dt>
            </a>
        </dl>


    </div>
    <br>
    <div class="containerKnoppen">
        <a href="/account-link">
            <button class="btn btn-warning koppelen" type="button"> Bankrekening koppelen</button>
        </a>
        <a href="/home"> <!--MOET NOG NAAR JUISTE PAGINA VERWIJZEN -->
            <button class="btn btn-warning uitloggen" type="button"> Uitloggen</button>
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