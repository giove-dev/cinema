<%@include file="header.jsp"%>


<div class="container-fluid">
	<div class="d-flex  justify-content-center">
			<div class="card my-5" style="width: 18rem;">
	<div class="card-body">
		<h5 class="card-title">Biglietto</h5>
<div id="img">
</div>
	</div>
	<ul class="list-group list-group-flush">
		<li class="list-group-item">ID BIGLIETTO: ${biglietto.id }</li>
		<li id="indice" value="${biglietto.film_id }" class="list-group-item">ID
			FILM: ${biglietto.film_id }</li>
		<li id="titolo" class="list-group-item"></li>
		<li id="giorno" class="list-group-item"></li>
		<li class="list-group-item">NOME: ${biglietto.utente_username }</li>
		<li class="list-group-item">QUANTITA': ${biglietto.quantita }</li>
		<li class="list-group-item">POSTO/I: ${biglietto.posto }</li>
	</ul>
	<div class="card-body">
		<a class="btn btn-primary btn-sm mb-1"
			href="/biglietto/update/${biglietto.getId()}">modifica</a> <a
			class="btn btn-danger btn-sm mb-1"
			href="/biglietto/delete?id=${biglietto.getId()}">elimina </a>
	</div>
</div>
	</div>

</div>



<script type="text/javascript">
	var http = new XMLHttpRequest();
	const url = "http://localhost:9011/api/films";
	http.open("GET", url, true);
	http.send();

	var indice = document.getElementById("indice").value;
	var img = document.getElementById("img");
	console.log(indice);

	http.onreadystatechange = function() {

		if (this.readyState == 4 && this.status == 200) {
			console.log(this.readyState);
			console.log(this.status);

			var myObj = JSON.parse(this.responseText);
			console.log(myObj);


			var titolo = document.getElementById("titolo");
			var giorno = document.getElementById("giorno");

			img.innerHTML = '<img src="' + myObj[indice-1].locandina + '" width="100rem" class="img-fluid" alt="...">';
			titolo.innerHTML = 'FILM: ' + myObj[indice-1].titolo;
			giorno.innerHTML = 'DATA: ' + myObj[indice-1].giorno;
			
		}
	}
</script>

<%@include file="footer.jsp"%>
