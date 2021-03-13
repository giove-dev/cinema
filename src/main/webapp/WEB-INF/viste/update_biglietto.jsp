<%@include file="header.jsp"%>

<div id="films"></div>

<form action="/biglietto/updateBiglietto/${biglietto.getId()}"
	method="post">

			  <label for="film_id" class="form-label">Inserire il numero del film che si vuole selezionare</label>

	<input type="text" name="film_id" class="form-control" id="film_id"
		aria-describedby="film_id" value="${biglietto.film_id}">
		 
		<input
		type="hidden" name="utente_username" class="form-control"
		id="utente_username" aria-describedby="utente_username"
		value="${biglietto.utente_username}">

	<button type="submit" class="btn btn-primary" value="update biglietto">salva</button>

</form>

<script type="text/javascript">
	var http = new XMLHttpRequest();
	const url = "http://localhost:9011/api/films";
	http.open("GET", url, true);
	http.send();
	http.onreadystatechange = function() {

		if (this.readyState == 4 && this.status == 200) {
			console.log(this.readyState);
			console.log(this.status);

			var myObj = JSON.parse(this.responseText);

			var films = document.getElementById("films");

			for (var i = 0; i < myObj.length; i++) {
				films.innerHTML += myObj[i].id + ') ' + myObj[i].titolo + '<br>';
			}
		}
	}
</script>

<%@include file="footer.jsp"%>