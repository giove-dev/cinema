
<%@include file="header.jsp"%>


<div class="riga">
	<div class="container">

		<div class="row text-center">
			<span class="border border-secondary mt-5 bg-dark text-light">
				<div class="col-8 mx-auto mt-2">
					<p>
						<cite>Il cinema è l'unica forma d'arte che - proprio perché
							operante all'interno del concetto e dimensione di tempo - è in
							grado di riprodurre l'effettiva consistenza del tempo - l'essenza
							della realtà - fissandolo e conservandolo per sempre.</cite>
					</p>
					<p class="col text-right">Andrej Tarkovskij</p>
				</div>
			</span>
		</div>

	</div>
</div>
<div class="container-fluid text-center">
	<div class="container mt-5">
		<div class="row">
			<div class="col-12">
				<h2 class="center">NUOVE USCITE</h2>
			</div>

			<!--   <div class="col-12 col-sm-6 col-md-3 mb-2">
                        <img src="${film[1].locandina}" width="250rem"><br>
                        <h4> <a href="/films/dettaglio/${film[1].getId()}" style="text-decoration: none">${film[1].titolo}</a></h4>
                    </div>
                    
                    <div class="col-12 col-sm-6 col-md-3 mb-2">
                        <img src="${film[4].locandina}" width="250rem"><br>
                        <h4> <a href="/films/dettaglio/${film[4].getId()}" style="text-decoration: none">${film[4].titolo}</a></h4>
                    </div>
                    
                    <div class="col-12 col-sm-6 col-md-3 mb-2">
                        <img src="${film[6].locandina}" width="250rem"><br>
                        <h4> <a href="/films/dettaglio/${film[6].getId()}" style="text-decoration: none">${film[6].titolo}</a></h4>
                    </div>
                    
                    <div class="col-12 col-sm-6 col-md-3 mb-2">
                        <img src="${film[7].locandina}" width="250rem"><br>
                        <h4> <a href="/films/dettaglio/${film[7].getId()}" style="text-decoration: none">${film[7].titolo}</a></h4>
                    </div>
                    
                </div>-->

			<div class="banner">
				<div id="carouselExampleControls" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div id="c1"></div>
						</div>
						<div class="carousel-item">
							<div id="c2"></div>
						</div>
						<div class="carousel-item">
							<div id="c3"></div>
						</div>
					</div>
					<div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#carouselExampleControls" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#carouselExampleControls" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
				</div>

			</div>

		</div>

	</div>

	<div class="container mt-5 mb-5">
		<div class="row">
			<div class="col-12">
				<h2 class="center">CATEGORIE</h2>
			</div>

			<div class="col-12 col-sm-6 col-md-3 mb-2">
				<img src="http://placekitten.com/200/300"><br>
				<h4>
					<a href="/generi/${film[7].getGenere()}"
						style="text-decoration: none">${film[7].genere}</a>
				</h4>
			</div>
			<div class="col-12 col-sm-6 col-md-3 mb-2">
				<img src="http://placekitten.com/200/300"><br> CATEGORIA
				2
			</div>
			<div class="col-12 col-sm-6 col-md-3 mb-2">
				<img src="http://placekitten.com/200/300"><br> CATEGORIA
				3
			</div>
			<div class="col-12 col-sm-6 col-md-3 mb-2">
				<img src="http://placekitten.com/200/300"><br> CATEGORIA
				4
			</div>
		</div>
	</div>
</div>


<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
	crossorigin="anonymous">
	
</script>
<script type="text/javascript">
	var http = new XMLHttpRequest();
	var c1 = document.getElementById("c1");
	var c2 = document.getElementById("c2");
	var c3 = document.getElementById("c3");

	const url = "http://localhost:9011/api/films";
	http.open("GET", url, true);
	http.send();

	http.onreadystatechange = function() {

		if (this.readyState == 4 && this.status == 200) {
			console.log(this.readyState);
			console.log(this.status);

			var myObj = JSON.parse(this.responseText);
			console.log(myObj)
			for (var i = 0; i < 4; i++) {

				c1.innerHTML += '<a href="/films/dettaglio/'
						+ myObj[i].id
						+ '"</a><img src="' + myObj[i]
                    .locandina +
                    '" class="img-fluid" alt="...">';
			}
			for (var i = 4; i < 8; i++) {

				c2.innerHTML += '<a href="/films/dettaglio/'
						+ myObj[i].id
						+ '"</a><img src="' + myObj[i]
                    .locandina +
                    '" class="img-fluid" alt="...">';
			}
			for (var i = 8; i < 12; i++) {

				c3.innerHTML += '<a href="/films/dettaglio/'
						+ myObj[i].id
						+ '"</a><img src="' + myObj[i]
                    .locandina +
                    '" class="img-fluid" alt="...">';
			}
		}
	}
</script>
<%@include file="footer.jsp"%>
