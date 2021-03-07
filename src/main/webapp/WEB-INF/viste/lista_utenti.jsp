
<%@include file="header.jsp"%>

	<h1>Lista utenti</h1>

	<ul>
		<c:forEach var="i" begin="0" end="${utente.size()-1}">
				<h3><c:out value="${utente[i].username}" /></h3>
			<li>
				<c:out value="${utente[i].nome}" />
				<c:out value="${utente[i].cognome}" />
				<c:out value="${utente[i].ultimamodifica}" />
			</li>
		</c:forEach>
	</ul>

<%@include file="footer.jsp"%>