<%@include file="header.jsp"%>

<h1>Registrati!</h1>

<form action="addUtente" method="post">

<!-- 	<input type="hidden" name="id" value="null"> -->
	<input type="email" name="email" placeholder="email">
	<input type="text" name="username" placeholder="username">
	<input type="password" name="password" placeholder="password">
	<input type="hidden" name="tipo" value="B">
	<input type="hidden" name="firma" value="Utenti con diritti minimi">
	
	<input type="submit" value="aggiungi utente">
</form>
<%@include file="footer.jsp"%>