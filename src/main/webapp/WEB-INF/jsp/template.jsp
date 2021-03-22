<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%--    weergegeven titel in tabblad (elke keer aanpassen dus)--%>
    <title>GBBC</title>
    <link rel="stylesheet" href="css/basis.css" type="text/css"/>
    <link rel="stylesheet" href="css/basis.css" type="text/css"/>
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
                    <li><a class="nav-item" href="#">Over Ons</a></li>
                    <li><a class="nav-item" href="/open-account">Open Account</a></li>
                    <li><a class="nav-item" href="#">Service &amp; Contact</a></li>
                </ul>
            </div>
            <button class="btn btn-outline-success" type="button">Login</button>
    </div>
    </nav>
    </div>
    <!-- einde navbar -->
</header>

<%-- <section> = een sectie in de pagina--%>
<section>

<%--    zoekbalk--%>
    <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Zoeken" aria-label="Search">
        <a href="/login"><button class="btn btn-outline-success" type="button">Login</button></a>
    </form>

    <br/>

    <%--Hier onze eigen functionaliteiten voor betreffende view
    Dit is dummy text hieronder--%>
    <h1>Welkom bij GBBC</h1>
    <p><i>Get your gold while it's hot!</i><br/>
        I'm baby direct trade kitsch pork belly shoreditch crucifix hashtag occupy sustainable quinoa migas pour-over. Gochujang typewriter mumblecore activated charcoal biodiesel chartreuse post-ironic kitsch la croix single-origin coffee unicorn vape. Unicorn craft beer copper mug artisan iceland vexillologist glossier coloring book offal portland palo santo. Hashtag literally activated charcoal ethical woke humblebrag distillery occupy keytar yr hella 8-bit intelligentsia pickled godard. Beard four dollar toast fam hot chicken, fixie sartorial tote bag thundercats selfies banh mi paleo.<br><br/>

        Gluten-free beard chicharrones chambray. Beard ethical distillery coloring book, drinking vinegar four loko keffiyeh chillwave sustainable mlkshk bushwick seitan butcher. Pork belly hell of retro gluten-free wayfarers. Tattooed bespoke air plant +1 quinoa, pitchfork squid portland echo park.

        Dummy text? More like dummy thicc text, amirite?
    </p>

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
                    <li><a class="nav-item" href="https://goo.gl/maps/i1WJAbktm4S3RDYa9" target="_blank">Plan a visit</a></li>
                </ul>
            </div>
    </div>
    </nav>
    </div>
</footer>
</body>