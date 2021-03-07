
<%@include file="header.jsp"%>

	<h1>
		<c:forEach var="i" begin="0" end="0">		
				<h1>Lista film sala ${film[i].sala}</h1>
		</c:forEach>
	</h1>

	<ul>
		<c:forEach var="i" begin="0" end="${film.size()-1}">
				<h3><c:out value="${film[i].titolo}" /></h3>
			<li>
				<c:out value="${film[i].sala}" />
				<c:out value="${film[i].giorno}" />
				<c:out value="${film[i].ora}" />	
			</li>
			
		</c:forEach>
	</ul>

<%@include file="footer.jsp"%>