<%@include file="header.jsp"%>

<h2>Risultati ricerca per: '${keyword}'</h2>

<!-- da finire -->
 <ul>
<c:forEach var="i" begin="0" end="${searchResult.size()}">
						
	<h3><c:out value="${searchResult[i].titolo}" /></h3>		
	<c:out value="${searchResult[i].genere}" />
	<img alt="" src="${searchResult[i].locandina}" width="150rem" />	
				
</c:forEach>
</ul>	
<%@include file="footer.jsp"%>