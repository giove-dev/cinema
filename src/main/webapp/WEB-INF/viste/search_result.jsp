<%@include file="header.jsp"%>

<h2>Search results for: '${keyword}'</h2>

<!-- da finire -->
 <ul>
<c:forEach var="i" begin="0" end="${searchResult.size()}">
						
	<h3><c:out value="${searchResult[i].titolo}" /></h3>
			
	<c:out value="${searchResult[i].genere}" />
						
</c:forEach>
</ul>	
<%@include file="footer.jsp"%>