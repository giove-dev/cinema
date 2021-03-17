<%@include file="header.jsp"%>
<div class="container-fluid my-5 ">
	<div class="d-flex justify-content-center " >

		<div class="col-2 my-5 px-5 py-5" style="background-color:rgb(189, 185, 185);"><svg xmlns="http://www.w3.org/2000/svg" width="80" height="80" fill="currentColor" class="bi bi-bookmark-star-fill" viewBox="0 0 16 16">
			<path fill-rule="evenodd" d="M2 15.5V2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.74.439L8 13.069l-5.26 2.87A.5.5 0 0 1 2 15.5zM8.16 4.1a.178.178 0 0 0-.32 0l-.634 1.285a.178.178 0 0 1-.134.098l-1.42.206a.178.178 0 0 0-.098.303L6.58 6.993c.042.041.061.1.051.158L6.39 8.565a.178.178 0 0 0 .258.187l1.27-.668a.178.178 0 0 1 .165 0l1.27.668a.178.178 0 0 0 .257-.187L9.368 7.15a.178.178 0 0 1 .05-.158l1.028-1.001a.178.178 0 0 0-.098-.303l-1.42-.206a.178.178 0 0 1-.134-.098L8.16 4.1z"/>
		  </svg></div>
		  <div class="col-6 my-5 py-5" style="background-color:rgb(189, 185, 185);">
			<form action="addAbbonamento" method="post">
<!-- 	<input type="hidden" name="id" value="null"> -->
	<input type="hidden" id="user" name="utente_username" placeholder="username">
	<label for="rimanenza" class="form-label"><h3>Ingressi</h3></label>
	<p>Qua seleziona il numero di ingressi desiderati per il tuo abbonamento.</p>
<select class="form-select my-5" style="width:5rem" name ="rimanenza" aria-label="Default select example">
  <option selected>10</option>
  <option value="5">5</option>
</select>
	
	
	<input class="btn btn-success" id="btn" type="submit"  value="acquista abbonamento">
</form>  
		  </div>


	</div>
</div>


<script type="text/javascript">

var user = document.getElementById('user');

user.value = localStorage.getItem('username');
console.log(user);

</script>

<div class="fixed-bottom">
	<%@include file="footer.jsp"%>
</div>

