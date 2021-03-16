<%@include file="header.jsp"%>

<form action="addAbbonamento" method="post">
<!-- 	<input type="hidden" name="id" value="null"> -->
	<input type="hidden" id="user" name="utente_username" placeholder="username">
	<label for="rimanenza" class="form-label">Rimanenza</label>
<select class="form-select" name ="rimanenza" aria-label="Default select example">
  <option selected>10</option>
  <option value="5">5</option>
</select>
	
	<input type="submit" id="btn" value="acquista abbonamento"></input>

</form>

<script type="text/javascript">

var user = document.getElementById('user');

user.value = localStorage.getItem('username');
console.log(user);

</script>

<%@include file="footer.jsp"%>
