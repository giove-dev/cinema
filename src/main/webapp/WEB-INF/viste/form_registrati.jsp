<%@include file="header.jsp"%>

<h1>Registrati!</h1>


<form name="myForm" id="myForm" action="addUtente" method="post">

	<!-- 	<input type="hidden" name="id" value="null"> -->
	<input type="email" name="email" placeholder="email"> <input
		type="text" id="user" name="username" placeholder="username">
	<div id="feedUser"></div>
	<div id="feedUserMax"></div>
	<input type="password" name="password" placeholder="password">
	<input type="hidden" name="tipo" value="B"> <input
		type="hidden" name="firma" value="Utenti con diritti minimi">

	<input type="submit" value="aggiungi utente">
</form>

<script type='text/javascript'>
	var username = document.getElementById('user');
	var feedUser = document.getElementById('feedUser');
	var feedUserMax = document.getElementById('feedUserMax');

	function validate(event) {

		var user = username.value;
		if (document.myForm.username.value == '') {
			alert("Hai dimenticato di inserire l'Username");
			document.myForm.username.focus();
			event.preventDefault();
			return false;
		} else if (user.length > 16) {
			alert("Hai utilizzato più di 16 caratteri");
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

	}

	function suggerisciU() {
		var user = username.value;

		if (user.length < 16) {
			feedUser.innerHTML = "Utilizzare al massimo 16 caratteri";
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