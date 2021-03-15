<%@include file="header.jsp"%>
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
			<div class="row row-cols-1">

				<div class="col">
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					

				</div>
				<div class="col">
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					

				</div>
				<div class="col">
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					

				</div>
				<div class="col">
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					

				</div>
				<div class="col">
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					

				</div>
			</div>
		</div>
		<div class="col-6 col-sm-5 col-md-3">
			<div class="row row-cols-1">

				<div class="col">
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					

				</div>
				<div class="col">
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					

				</div>
				<div class="col">
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					

				</div>
				<div class="col">
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					

				</div>
				<div class="col">
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					<button class="btn btn-primary text-center" style="width:2rem text-center"  type="submit">A1</button>
					

				</div>
			</div>
		</div>
		
	</div>
	

</div>


<script src="/../../resources/js/acquista.js"></script>

<%@include file="footer.jsp"%>
