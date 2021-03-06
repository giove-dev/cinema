<%@include file="header.jsp"%>

	


			<h1 style="text-align: center; margin-top: 1rem;"><svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
				<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
			  </svg>    Risultati ricerca per: "${keyword}"</h1>

<!-- da finire -->
		<c:if test="${searchResult.size() == 0}">
		
		<div class="text-center">
        <div class="alert" role="alert">
            <img src="/../../resources/img/logo_2.png" class="img-fluid" alt="ERRORE" width="10%"><br>
            <br><h4 class="alert-heading" style="color:white">Nessun risultato trovato <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-emoji-frown-fill" viewBox="0 0 16 16">
              <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm-2.715 5.933a.5.5 0 0 1-.183-.683A4.498 4.498 0 0 1 8 9.5a4.5 4.5 0 0 1 3.898 2.25.5.5 0 0 1-.866.5A3.498 3.498 0 0 0 8 10.5a3.498 3.498 0 0 0-3.032 1.75.5.5 0 0 1-.683.183zM10 8c-.552 0-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5S10.552 8 10 8z"/>
            </svg></h4>
            <p style="color:white">Torna alla pagina HOME</p>
            <div class="animate__animated animate__fadeInDownBig"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-arrow-90deg-down" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M4.854 14.854a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L4 13.293V3.5A2.5 2.5 0 0 1 6.5 1h8a.5.5 0 0 1 0 1h-8A1.5 1.5 0 0 0 5 3.5v9.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4z"/>
              </svg></div>
            <hr>
            
            <a class="btn btn-dark" href="http://localhost:9011/home">HOME</a>
        </div>
    </div>
</c:if>
<c:if test="${searchResult.size() != 0}">
	    
        <div class="container-fluid mt-3 ms-5">
          <div class="d-flex justify-content-start">
<c:forEach var="i" begin="0" end="${searchResult.size()-1}">
              <div class="col-3">
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
  </c:forEach>
          </div>
        </div>
        
      
  

		</c:if>





	

        <div class="fixed-bottom">
<%@include file="footer.jsp"%>
</div>