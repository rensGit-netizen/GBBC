<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<%--    weergegeven titel in tabblad (elke keer aanpassen dus)--%>
	<title>GBBC</title>
	<link rel="stylesheet" href="css/basis.css" type="text/css"/>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
	      integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
	<link rel="stylesheet" href="css/bankEmployee.css" type="text/css"/>
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
					<li><a class="nav-item" href="/private-banking-customers">Particulieren Overzicht</a></li>
					<li><a class="nav-item" href="/business-customers">MKB Overzicht</a></li>
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

	<div class="intro">
		<h2><strong>Pinautomaat Aanvraag Overzicht</strong></h2>
	</div>

	<form class="zoeken d-flex mb-3">
		<input class="form-control me-2" type="search" placeholder="Zoeken" aria-label="Search">
		<button class="btn btn-outline-success" type="submit">Zoeken</button>
	</form>

	<div class="datatable">
		<table class="aanvraagtable table table-fixed table-sm table-responsive-sm table-hover table-borderless">
			<thead>
			<tr>
				<th scope="col" ro>Aanvrager</th>
				<th scope="col">Tenaamstelling</th>
				<th scope="col">Aanvraag Datum</th>
				<th scope="col">Afhandel Datum</th>
				<th scope="col">Status</th>
				<th></th>
			</tr>
			</thead>
			<tbody>
			<tr onclick="window.location='/home';">
				<td>Emily Koo</td>
				<td>Emily's Wok to Go</td>
				<td>10-03-2021</td>
				<td></td>
				<td>In behandeling</td>
				<td align="right"><button onclick="change()" class="btn btn-warning" type="submit">Genereer Code</button></td>
				</tr>
			<tr>
				<td>Emily Koo</td>
				<td>Emily's Wok to Go</td>
				<td>12-03-2021</td>
				<td></td>
				<td>In Behandeling</td>
				<td align="right"><button onclick="change()" class="btn btn-warning" type="submit">Genereer Code</button></td>
			</tr>
			<tr>
				<td>Emily Koo</td>
				<td>Emily's Wok to Go</td>
				<td>10-11-2021</td>
				<td></td>
				<td>In Behandeling</td>
				<td align="right"><button onclick="change()" class="btn btn-warning" type="submit">Genereer Code</button></td>
			</tr>
			<tr>
				<td>Emily Koo</td>
				<td>Emily's Wok to Go</td>
				<td>10-03-2020</td>
				<td></td>
				<td>In Behandeling</td>
				<td align="right"><button onclick="change()" class="btn btn-warning" type="submit">Genereer Code</button></td>
			</tr>
			<tr>
				<td>Emily Koo</td>
				<td>Emily's Wok to Go</td>
				<td>16-06-2021</td>
				<td></td>
				<td>In Behandeling</td>
				<td align="right"><button onclick="change()" class="btn btn-warning" type="submit">Genereer Code</button></td>
			</tr>
			<tr>
				<td>Emily Koo</td>
				<td>Emily's Wok to Go</td>
				<td>10-03-2021</td>
				<td></td>
				<td>In Behandeling</td>
				<td align="right"><button onclick="change()" class="btn btn-warning" type="submit">Genereer Code</button></td>
			</tr>
			<tr>
				<td>Emily Koo</td>
				<td>Emily's Wok to Go</td>
				<td>10-03-2021</td>
				<td></td>
				<td>In Behandeling</td>
				<td align="right"><button onclick="change()" class="btn btn-warning" type="submit">Genereer Code</button></td>
			</tr>
			<tr>
				<td>Emily Koo</td>
				<td>Emily's Wok to Go</td>
				<td>10-03-2021</td>
				<td></td>
				<td>In Behandeling</td>
				<td align="right"><button onclick="change()" class="btn btn-warning" type="submit">Genereer Code</button></td>
			</tr>
			<tr>
				<td>Emily Koo</td>
				<td>Emily's Wok to Go</td>
				<td>10-03-2021</td>
				<td></td>
				<td>In Behandeling</td>
				<td align="right"><button onclick="change()" class="btn btn-warning" type="submit">Genereer Code</button></td>
			</tr>
			<tr>
				<td>Emily Koo</td>
				<td>Emily's Wok to Go</td>
				<td>10-03-2021</td>
				<td></td>
				<td>In Behandeling</td>
				<td align="right"><button onclick="change()" class="btn btn-warning" type="submit">Genereer Code</button></td>
			</tr>
			</tbody>
		</table>
<%--		<a href="/private-banking-customers"><button class="btn btn-outline-success" type="button">Particulieren</button></a>--%>
<%--		<a href="/business-customers"><button class="btn btn-outline-success" type="button">MKB</button></a>--%>
<%--		<a href="/login"><button class="btn btn-outline-success" type="button">Uitloggen</button></a>--%>
	</div>
</section>


<%--footer info op alle pagina's hetzelfde--%>
<%--footer info op alle pagina's hetzelfde--%>
<div id="footer">
	<%@include file="../jspf/footer.jspf"%>
</div>
<script>
    function change() // no ';' here
    {
        alert("67283");
    }
</script>
</body>