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
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="L1" title="L1" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="L2" title="L2" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="L3" title="L3" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center" value="L4" title="L4" type="submit">&#10148;</button>
					

				</div>
				<div class="col">
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="L5" title="L5" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="L6" title="L6" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="L7" title="L7" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="L8" title="L8" type="submit">&#10148;</button>
					

				</div>
				<div class="col">
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="L9" title="L9" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="L10" title="L10" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="L11" title="L11" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="L12" title="L12" type="submit">&#10148;</button>
					

				</div>
				<div class="col">
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="L13" title="L13" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="L14" title="L14" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="L15" title="L15" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="L16" title="L16" type="submit">&#10148;</button>
					

				</div>
				<div class="col">
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="L17" title="L17" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="L18" title="L18" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="L19" title="L19" type="submit">&#10148;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="L20" title="L20" type="submit">&#10148;</button>
					

				</div>
			</div>
		</div>
		<div class="col-6 col-sm-5 col-md-3">
			<div class="row row-cols-1">

				<div class="col">
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R1" title="R1" type="submit">&#10032;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R2" title="R2" type="submit">&#10032;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R3" title="R3" type="submit">&#10032;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R4" title="R4" type="submit">&#10032;</button>
					

				</div>
				<div class="col">
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R5" title="R5" type="submit">&#10032;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R6" title="R6" type="submit">&#10032;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R7" title="R6" type="submit">&#10032;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R8" title="R8" type="submit">&#10032;</button>
					

				</div>
				<div class="col">
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R9" title="R9" type="submit">&#10032;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R10" title="R10" type="submit">&#10032;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R11" title="R11" type="submit">&#10032;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R12" title="R12" type="submit">&#10032;</button>
					

				</div>
				<div class="col">
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R13" title="R13" type="submit">&#10032;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R14" title="R14" type="submit">&#10032;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R15" title="R15" type="submit">&#10032;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R16" title="R16" type="submit">&#10032;</button>
					

				</div>
				<div class="col">
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R17" title="R17" type="submit">&#10032;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R18" title="R19" type="submit">&#10032;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R19" title="R19" type="submit">&#10032;</button>
					<button class="btn btn-outline-primary text-center" style="width:2rem text-center"  value="R20" title="R20" type="submit">&#10032;</button>
					

				</div>
			</div>
		</div>
		
	</div>
	

</div>


<script src="/../../resources/js/acquista.js"></script>

<%@include file="footer.jsp"%>
