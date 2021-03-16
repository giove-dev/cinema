<%@include file="header.jsp"%>

	

<div class="container">
	<div class="row align-items-start ">
		<div class="col-12 text-center mt-3">
			<h1><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
				<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
			  </svg>    Risultati ricerca per: "${keyword}"</h1>
		</div>
<!-- da finire -->

		<c:forEach var="i" begin="0" end="${searchResult.size()-1}">
			<div class="col-2 col-sm-3 col-md-4">
            </div>
            <div class="col-7 col-sm-6 col-md-4">
                <div class="card" style="width: 18rem;">
                    <img src="${searchResult[i].locandina}" class="card-img-top" alt="...">
                    <div class="card-body">
                      <h5 class="card-title"><c:out value="${searchResult[i].titolo}" /></h5>
                      <p class="card-text"><c:out value="${searchResult[i].genere}" /></p>
                    </div>
                    <div class="card-body">
                      <a href="/films/dettaglio/${searchResult[i].getId()}" class="btn btn-primary">Dettaglio</a>

                    </div>
                  </div>
            </div>
            <div class="col-3 col-sm-3 col-md-4">
            </div>
        </div>
    </div>
		</c:forEach>
	 </div>

</div>




	


<%@include file="footer.jsp"%>