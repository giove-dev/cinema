<%@include file="header.jsp"%>

           <div class="riga" style="background-color:GAINSBORO;margin-top:1rem;margin-bottom:1rem">
            <h1 class="display-6 text-center"><svg xmlns="http://www.w3.org/2000/svg" style="background-color:GAINSBORO;margin-top:1rem;margin-bottom:1.5rem"  width="40" height="40" fill="currentColor" class="bi bi-film" viewBox="0 0 16 16">
                <path d="M0 1a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V1zm4 0v6h8V1H4zm8 8H4v6h8V9zM1 1v2h2V1H1zm2 3H1v2h2V4zM1 7v2h2V7H1zm2 3H1v2h2v-2zm-2 3v2h2v-2H1zM15 1h-2v2h2V1zm-2 3v2h2V4h-2zm2 3h-2v2h2V7zm-2 3v2h2v-2h-2zm2 3h-2v2h2v-2z"/>
              </svg>  Catalogo Film</h1>
        </div>

    <c:forEach var="i" begin="0" end="${film.size()-1}">
        <div class="col 12 .col-sm-9 mt-5">


               
               <div class="row align-items-start mt-5" style="background-color: rgba(223, 224, 223, 0.932); border: 2px solid rgba(0, 0, 0, 0.158)">
                    

                    <div class="col-11 col-sm-5 col-md-3 ms-3 mt-3 mb-3">
                        <img alt="" src="${film[i].locandina}" width="150rem">
                    </div>
                    <div class="col-11 col-sm-6 col-md-5 ms-3 mt-3 mb-3">
                        <h3>
                            <a
                            href="/films/dettaglio/${film[i].getId()}"
                            style="text-decoration: none">${film[i].titolo}</a>
                        </h3>
                    </div>
                    <div class="col-11 col-sm-11 col-md-3 ms-3 mt-3 mb-3">
                        <h3>Sala: ${film[i].sala}</h3>
                        <h3>Data e Ora:</h3>
                        <h4>${film[i].giorno}</h4>
                        <h4>${film[i].ora}</h4>
                    
                   
                    </div>
                    
                    <div
                        class="modal fade"
                        id="exampleModal"
                        tabindex="-1"
                        aria-labelledby="exampleModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Elimina film</h5>
                                    <button
                                        type="button"
                                        class="btn-close"
                                        data-bs-dismiss="modal"
                                        aria-label="Close">
                                    </button>
                                </div>
                                <div class="modal-body">
                                    Sei sicuro di eliminare questo film?
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Annulla</button>
                               
                                        <a onclick=""
                                            class="btn btn-outline-danger  mb-1"
                                            role="button"> Conferma
                                        </a>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                
                </div>    
        </div>       
</c:forEach>

<%-- <h3>NON cancellare per adesso</h3>

<h4>Film presenti in catalogo: ${totalItems}, Pagine totali:${totalPages}</h4>--%>
        	
    		<%--Per vedere il link precedente eccetto la prima pagina --%>
    		
    	<%-- 	<c:if test="${currentPage != 1 }">
    			<a href="http://localhost:9011/catalogo/${currentPage - 1}">Previous</a>
    		</c:if>--%>
    		
    		<%--Per vedere i numeri delle pagine. Il when serve per disabilitare il link della pagina corrente--%>
    		
    	<%-- 	<c:forEach begin="1" end="${totalPages}" var="i">
                <c:choose>
                    <c:when test="${currentPage eq i}">
                        <td>${i}</td>
                    </c:when>
                    <c:otherwise>
                        <td><a href="http://localhost:9011/catalogo/${i}">${i}</a></td>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
    		
    		<%--Per visualizzare il prossimo link --%>
<%--    <c:if test="${currentPage lt totalPages}">
        <td><a href="http://localhost:9011/catalogo/${currentPage + 1}">Next</a></td>
    </c:if> --%>

      
<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <c:if test="${currentPage != 1 }">
	<li class="page-item disabled">
      <a class="page-link" href="http://localhost:9011/catalogo/${currentPage - 1}" tabindex="-1" aria-disabled="true">Previous</a>
    </li>
    </c:if>
    <c:forEach begin="1" end="${totalPages}" var="i">
                <c:choose>
                    <c:when test="${currentPage eq i}">                      
                         <li class="page-item"><a class="page-link">${i}</a></li>
                    </c:when>
                    <c:otherwise>
                  		<li class="page-item"><a class="page-link" href="http://localhost:9011/catalogo/${i}">${i}</a></li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
    
    <c:if test="${currentPage lt totalPages}">
    <li class="page-item">
      <a class="page-link" href="http://localhost:9011/catalogo/${currentPage + 1}">Next</a>  
    </li>
  </c:if>
  </ul>
</nav>

                

  
   <script src="/../../resources/js/logout.js"></script>

<%@include file="footer.jsp"%>