<%@include file="header.jsp"%>


<form action="addBiglietto" method="post">
<!-- 	<input type="hidden" name="id" value="null"> -->

	<img src="${film.locandina}" alt=”biglia” style="float: left; margin: 5px"
			width="100rem">

	<label for="quantita" class="form-label">Quantità</label>
<select class="form-select" name ="quantita" aria-label="Default select example">
  <option selected>Nï¿½</option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
</select>
	<input type="text" id="posto" name="posto" placeholder="posto">
	<input type="hidden" id="user" name="utente_username" placeholder="username">
	<input type="hidden" id="film" name="film_id" placeholder="id film" value="${film.id}">
	
	<input type="submit" id="btn" value="acquista biglietto"></input>

	
		


</form>

<script src="/../../resources/js/acquista.js"></script>

<%@include file="footer.jsp"%>
