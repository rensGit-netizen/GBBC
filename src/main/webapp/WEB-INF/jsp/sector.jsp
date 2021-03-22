<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%--    weergegeven titel in tabblad--%>
    <title>GBBC</title>
    <link rel="stylesheet" href="css/basis.css" type="text/css"/>
    <link rel="stylesheet" href="css/smesTable.css" type="text/css"/>
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
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="toggleMenu">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li><a class="nav-item" href="/connect-terminal">Terminal Overzicht</a></li>
                    <li><a class="nav-item" href="/private-banking-customers">Particulieren Overzicht</a></li>
                    <li><a class="nav-item" href="https://goo.gl/maps/i1WJAbktm4S3RDYa9" target="_blank">IT Helpdesk</a></li>
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
    <div class="informationField">
        <H1>Welcome ${client}!</H1>
    </div>
    <!--<Hier onze eigen functionaliteiten voor betreffende view>-->
    <div class="sectordatatable">
        <table class="smestable table table-fixed table-sm table-responsive-sm table-hover table-borderless">
            <thead>
            <tr>
                <th scope="col" ro>Sector</th>
                <th scope="col">Gemiddeld saldo</th>
            </tr>
            </thead>
            <tbody>
            <c:if test="${!empty(sectors)}">
                <c:forEach var="Sector" items="${sectors}">
                    <tr class="align-right">
                        <td>${Sector.name}</td>
                        <td align="right">&euro;${Sector.avgBalance}</td>
                    </tr>
                </c:forEach>
            </c:if>
            </tbody>
        </table>
    </div>
    <div class ="keuzebuttons">
        <h6>Kies hier welk overzicht u wil zien</h6>
        <a href="/business-customers" method = "get"><button class="btn btn-warning">Alle zakelijke klanten</button></a>
        <a href="/top10" method = "get"><button class="btn btn-warning">(Top 10) Hoogste saldo</button></a>
        <a href="/mostActive" method = "get"><button class="btn btn-warning">(Top 10) Meest actief</button></a>
        <a href="/averageSector" method = "get"><button class="btn btn-warning">Saldo per sector</button></a>
    </div>
</section>
<%--footer info op alle pagina's hetzelfde--%>
<div id="footer">
    <%@include file="../jspf/footer.jspf"%>
</div>
</body>