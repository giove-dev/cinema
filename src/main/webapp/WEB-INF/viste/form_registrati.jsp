<%@include file="header.jsp"%>

<h1>Registrati!</h1>

<form action="addUtente" method="post">

<!-- 	<input type="hidden" name="id" value="null"> -->
	<input type="text" name="email" placeholder="email">
	<input type="text" name="username" placeholder="username">
	<input type="text" name="password" placeholder="password">
	
	<input type="submit" value="aggiungi utente">
</form>
<%@include file="footer.jsp"%>