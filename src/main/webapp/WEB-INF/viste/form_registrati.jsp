<%@include file="header.jsp"%>
<div class="container">
<div class="display-6 my-2 p-1 " style="background-color:white;">
	<h1 class= "animate__animated animate__heartBeat" style="text-align:center; margin-bottom:2rem; margin-top:2rem"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-person-square" viewBox="0 0 16 16">
		<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
		<path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm12 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1v-1c0-1-1-4-6-4s-6 3-6 4v1a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12z"/>
	  </svg> Registrazione</h1>
</div>	
</div>



<div class="container-fluid" style="text-align:center">
	<div class="d-flex justify-content-center">
			<form name="myForm" id="myForm" style="width:17rem" action="/registrazione/addUtente" method="post">

	<!-- 	<input type="hidden" name="id" value="null"> -->
	<div class="form-floating">
		<input type="Nome" class="form-control mt-3 mb-3" name="nome" placeholder=""> 
		<label for="nome" >Nome</label>
	</div>
	<div class="form-floating">
			<input type="Cognome" class="form-control mt-3 mb-3" name="cognome" placeholder=""> 
			<label for="cognome">Cognome</label> 
	</div>
<div class="form-floating">
	<input type="email" class="form-control mt-3 mb-3" name="email" placeholder=""> 
	<label for="email">Email</label> 

</div>
<div class="form-floating">
	<input
		type="text" class="form-control mt-3 mb-3" id="user" name="username"  placeholder="">
		<label for="username">Username</label>
</div>
	
	<div class="form-text" id="feedUser"></div>
	<div class="form-floating">
		<input type="password" class="form-control mt-3 mb-3" name="password" placeholder="">
		<label for="password">Password</label>
	</div>
	
	<input type="hidden" name="tipo" value="B"> <input
		type="hidden" name="firma" value="Utenti con diritti minimi">

	<input type="submit" class="btn btn-primary mb-3" value="Registrami">
</form>
	</div>

</div>



<script type='text/javascript'>
	var username = document.getElementById('user');
	var feedUser = document.getElementById('feedUser');

	function validate(event) {

		var user = username.value;
		if (document.myForm.username.value == '') {
			alert("Hai dimenticato di inserire l'Username");
			document.myForm.username.focus();
			event.preventDefault();
			return false;
		} else if (user.length > 16) {
			alert("Hai utilizzato pi� di 16 caratteri per l'Username");
			document.myForm.username.focus();
			event.preventDefault();
			return false;
		}

		if (document.myForm.password.value == '') {
			alert("Hai dimenticato di inserire la Password");
			document.myForm.password.focus();
			event.preventDefault();
			return false;
		}
		
		if (document.myForm.email.value == '') {
			alert("Hai dimenticato di inserire l'E-mail");
			document.myForm.email.focus();
			event.preventDefault();
			return false;
		}

	}

	function suggerisciU() {
		var user = username.value;

		if (user.length < 16) {
			feedUser.innerHTML = 'Utilizzare al massimo 16 caratteri';
			feedUser.setAttribute('class', 'free');
		} else {
			feedUser.innerHTML = "";
		}
	}

	username.addEventListener('focus', suggerisciU, false);

	var myForm = document.getElementById('myForm');

	myForm.addEventListener('submit', validate, false);
</script>

<%@include file="footer.jsp"%>