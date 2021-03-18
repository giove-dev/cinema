<%@include file="header.jsp"%>


<style>
	body{
		background-color:rgb(202, 199, 199);}
	[title]:hover:after{
  content: attr(title);
  font: 1em sans-serif;
}
	</style>
<div class="container-fluid">
<h1><c:out value="${film.titolo}"> </c:out></h1>

</div>

<div class="container">

	<div class="row">
		<div class="col-12 col-sm-6 col-md-3">
			<img class="img-fluid" src="${film.locandina}" alt=”biglia” style="float: left; margin: 5px" width="100%rem">

		</div>
       	<div class="col-12 col-sm-6 col-md-3">
		   			<form action="addBiglietto" method="post">
<!-- 	<input type="hidden" name="id" value="null"> -->


<label for="quantita" class="form-label">Quantit&agrave</label>
<select class="form-select my-3" style="width:7rem" name ="quantita" aria-label="Default select example">
  <option selected>Numero</option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
</select>

    
	<input type="text" id="posto" name="posto" placeholder="posto">





	<input type="hidden" id="user" name="utente_username" placeholder="username">
	<input type="hidden" id="film" name="film_id" placeholder="id film" value="${film.id}"> <br>
	
	<input class="btn btn-success my-4" type="submit" id="btn" value="acquista biglietto"></input>

</form>
	   	</div>
	   	<div class="col-6 col-sm-5 col-md-3">
			<div class="row row-cols-1 ">

				<div class="col ">
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="A1" title="A1" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="A2" title="A2" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="A3" title="A3" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="A4" title="A4" type="submit">&#10148;</button>
					

				</div>
				<div class="col">
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="B1" title="B1" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="B2" title="B2" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="B3" title="B3" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="B4" title="B4" type="submit">&#10148;</button>
					

				</div>
				<div class="col">
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="C1" title="C1" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="C2" title="C2" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="C3" title="C3" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="C4" title="C4" type="submit">&#10148;</button>
					

				</div>
				<div class="col">
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="D1" title="D1" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="D2" title="D2" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="D3" title="D3" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="D4" title="D4" type="submit">&#10148;</button>
					

				</div>
				<div class="col">
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="E1" title="E1" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="E2" title="E2" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="E3" title="E3" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="E4" title="E4" type="submit">&#10148;</button>
					

				</div>
			</div>
		</div>
		<div class="col-6 col-sm-5 col-md-3">
			<div class="row row-cols-1">

				<div class="col">
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="A5" title="A5" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="A6" title="A6" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="A7" title="A7" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="A8" title="A8" type="submit">&#10148;</button>
					

				</div>
				<div class="col">
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="B5" title="B5" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="B6" title="B6" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="B7" title="B7" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="B8" title="B8" type="submit">&#10148;</button>
					

				</div>
				<div class="col">
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="C5" title="C5" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="C6" title="C6" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="C7" title="C7" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="C8" title="C8" type="submit">&#10148;</button>
					

				</div>
				<div class="col">
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="D5" title="D5" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="D6" title="D6" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="D7" title="D7" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="D8" title="D8" type="submit">&#10148;</button>
					

				</div>
				<div class="col">
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="E5" title="E5" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="E6" title="E6" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="E7" title="E7" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="E8" title="E8" type="submit">&#10148;</button>
					

				</div>
			</div>
		</div>
		
	</div>
	

</div>


<script src="/../../resources/js/acquista.js"></script>

<%@include file="footer.jsp"%>
