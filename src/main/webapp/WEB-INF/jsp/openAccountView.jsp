<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>GBBC - Open account</title>
    <%@include file="../jspf/head.jspf"%>
    <link rel="stylesheet" href="css/openAccountV2.css" type="text/css"/>
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
                    <li><a class="nav-item" href="https://goo.gl/maps/i1WJAbktm4S3RDYa9" target="_blank">Service &amp; Contact</a></li>
                </ul>
            </div>
                <a href="/login"><button class="btn btn-outline-success" type="button">Login</button></a>
    </div>
    </nav>
    </div>
    <!-- einde navbar -->
</header>
<section>
    <!--Hier onze eigen functionaliteiten voor betreffende view>-->
    <div class="formulier pagination justify-content-center">
        <%--@elvariable id="customer" type="com.gbbc.webapplication.beans"--%>
        <form:form class="gebruiker" autocomplete="on" method="post" action="/account-created-succes" modelAttribute="openAccount">

            <h3>Schrijf je in en open nu een <br><i>GBBC-Gold-account</i></h3>

            <div class = "headimage"><img class = "picture" src="../../../../images/openaccount.jpg" alt="Open Account"></div>

            <h4>Persoonsgegevens</h4>
                <div class="row g-2">
                    <div class="col-md-6">
                    <label class="form-label">Voornaam</label>
                    <form:input type="text" class="form-control" placeholder="Voornaam" path="first_name"/>
                </div>
                <div class="col-md-6">
                    <label class="form-label">Achternaam</label>
                    <form:input type="text" class="form-control" placeholder="Achternaam" path="last_name"/>
                </div>
                </div>
                    <div class="col-md-12">
                        <label class="form-label">Burgerservicenummer</label>
                        <form:input type="text" class="form-control" placeholder="BSN" path="bsn"/>
                    </div>
                    <div class="col-md-12">
                        <label class="form-label">Geboortedatum</label>
                        <form:input type="text" class="form-control" placeholder="__-__-____" path="date_of_birth"/>
                    </div>
                    <div class="col-md-12">
                        <label class="form-label">Straatnaam & huisnummer</label>
                        <form:input type="text" class="form-control" placeholder="Straatnaam & huisnummer" path="street"/>
                    </div>
            <div class="row g-2">
                    <div class="col-md-4">
                        <label class="form-label">Postcode</label>
                        <form:input type="text" class="form-control" placeholder="0000XX" path="postal_code"/>
                    </div>
                <div class="col-md-8">
                    <label class="form-label">Woonplaats</label>
                    <form:input type="text" class="form-control" placeholder="Woonplaats" path="city"/>
                </div>
            </div>
            <div class="col-md-12">
                <label class="form-label">Land</label>
                <form:input type="text" class="form-control" placeholder="Land" path="country"/>
            </div>

            <h4>Accountgegevens</h4>
            <div class="col-md-12">
                <label class="form-label">Gebruikersnaam</label>
                <div class="input-group">
                <div class="input-group-text">@</div>
                <form:input type="text" class="form-control" placeholder="E-mailadres" path="user_name"/>
                </div>
            </div>
            <div class="col-md-12">
                <label class="form-label">Wachtwoord</label>
                <form:input type="password" class="form-control" placeholder="Wachtwoord" path="password"/>
            </div>
            <div class="col-md-12">
                <label class="form-label">Gemachtigde?</label>
                <div class="input-group">
                    <div class="input-group-text">@</div>
                    <form:input type="text" class="form-control" placeholder="E-mailadres gemachtigde" path="gemachtigde"/>
                </div>
            </div>

                <h4>Soort Rekening</h4>
                <div class="form-check form-check-inline">
                    <form:radiobutton class="form-check-input" name="flexRadioDefault" id="flexRadioDefault1" path="customer_type" value="Particulier"/>
                    <label class="form-check-label">
                        Particulier
                    </label>
                </div>
                <div class="form-check form-check-inline">
                    <form:radiobutton class="form-check-input" name="flexRadioDefault" id="flexRadioDefault2" path="customer_type" value="Zakelijk"/>
                    <label class="form-check-label">
                        Zakelijk
                    </label>
                </div>
            <div class="col-md-12">
                <label class="form-label">Bedrijfsnaam</label>
                <form:input type="text" class="form-control" placeholder="Bedrijfsnaam" path="title"/>
            </div>
            <div class="col-md-12">
                <label class="form-label">Sector</label>
                <form:input type="text" class="form-control" placeholder="Sector" path="sector"/>
            </div>


            <div class="form-check">
                <input class="form-check-input" type="checkbox">
                <label class="form-check-label">
            Akkoord met de <a href="http://www.google.com">algemene voorwaarden</a>
                </label>
                <br><br>
            <input class="laatgeldzien btn btn-warning submit" type="submit" value="Meldt u nu aan!" id="submit">
            <a href="/home"><button class ="btn btn-warning annuleren" type="button">Annuleren</button></a>

            </div> </form:form></div>
</section>
<%--footer info op alle pagina's hetzelfde--%>
<%--footer info op alle pagina's hetzelfde--%>
<div id="footer">
    <%@include file="../jspf/footer.jspf"%>
</div>
</body>