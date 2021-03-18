<%@include file="header_calendario.jsp"%>

<div class="row align-items-start">
    <div class="col-12 col-sm-5 col-md-3 text-light bg-dark vh-100">
        <div class="row align-items-start">

            <div class="col-3 mt-5 ms-3">
                <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="100%"
                    height="100%"
                    fill="currentColor"
                    class="bi bi-person-circle"
                    viewBox="0 0 16 16">
                    <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                    <path
                        fill-rule="evenodd"
                        d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                </svg>
            </div>
            <div class="col-8 mb-5 mt-3 ">
                <br>
                    <h3>Admin</h3>
                    <button type="button" id="logoutAdmin" class="btn btn-outline-light">LOGOUT</button>
                </div>

                <div class="col-2 mt-5 ms-3">
                    <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="20"
                        height="16"
                        fill="currentColor"
                        class="bi bi-person"
                        viewBox="0 0 16 16">
                        <path
                            d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
                    </svg>
                </a>
            </div>
            <div class="col-9 mt-5">
                <a href="/admin/utenti" class="text-reset">
                    <h4>USERS</h4>
                </a>
            </div>

            <div class="col-2 ms-3">
                <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="16"
                    height="16"
                    fill="currentColor"
                    class="bi bi-calendar"
                    viewBox="0 0 16 16">
                    <path
                        d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
                </svg>
            </div>
            <div class="col-9">
                <a href="http://localhost:9011/admin/eventi" class="text-reset">
                    <h4>CALENDARIO</h4>
                </a>
            </div>

            <div class="col-2 ms-3">
                <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="16"
                    height="16"
                    fill="currentColor"
                    class="bi bi-film"
                    viewBox="0 0 16 16">
                    <path
                        d="M0 1a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V1zm4 0v6h8V1H4zm8 8H4v6h8V9zM1 1v2h2V1H1zm2 3H1v2h2V4zM1 7v2h2V7H1zm2 3H1v2h2v-2zm-2 3v2h2v-2H1zM15 1h-2v2h2V1zm-2 3v2h2V4h-2zm2 3h-2v2h2V7zm-2 3v2h2v-2h-2zm2 3h-2v2h2v-2z"/>
                </svg>
            </div>
            <div class="col-9">
                <a href="/admin/films" class="text-reset">
                    <h4>CATALOGO</h4>
                </a>
            </div>

            <div class="col-2 ms-3">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-play-btn" viewBox="0 0 16 16">
                    <path d="M6.79 5.093A.5.5 0 0 0 6 5.5v5a.5.5 0 0 0 .79.407l3.5-2.5a.5.5 0 0 0 0-.814l-3.5-2.5z"/>
                    <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm15 0a1 1 0 0 0-1-1H2a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4z"/>
                  </svg>
            </div>
            <div class="col-9">
           
                    <h4>SALA <a href="http://localhost:9011/admin/sala/1" class="text-reset">1</a> -
                         <a href="http://localhost:9011/admin/sala/2" class="text-reset">2</a> -
                        <a href="http://localhost:9011/admin/sala/3" class="text-reset">3</a> -
                        <a href="http://localhost:9011/admin/sala/4" class="text-reset">4</a> 
                    
                    </h4>
               
            </div>

            <div class="col-2 ms-3">
                <svg
                    xmlns="http://www.w3.org/2000/svg"
                    width="16"
                    height="16"
                    fill="currentColor"
                    class="bi bi-plus-circle"
                    viewBox="0 0 16 16">
                    <path
                        d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                    <path
                        d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                </svg>
            </div>
            <div class="col-9">
                <a href="/admin/films/add" class="text-reset">
                    <h4>AGGIUNGI FILM</h4>
                </a>
            </div>
        </div>
    </div>

    
    <div class="col 12 col-sm-7 col-md-9 mt-4 ">
        <div class="riga" style="background-color:GAINSBORO;margin-top:2rem;margin-bottom:1rem">
            <h1 class="display-4 text-center" style="margin-top:2rem;margin-bottom:1rem"><svg  style="margin-bottom:1rem" xmlns="http://www.w3.org/2000/svg" idth="50" height="50" fill="currentColor" class="bi bi-calendar-date" viewBox="0 0 16 16">
                <path d="M6.445 11.688V6.354h-.633A12.6 12.6 0 0 0 4.5 7.16v.695c.375-.257.969-.62 1.258-.777h.012v4.61h.675zm1.188-1.305c.047.64.594 1.406 1.703 1.406 1.258 0 2-1.066 2-2.871 0-1.934-.781-2.668-1.953-2.668-.926 0-1.797.672-1.797 1.809 0 1.16.824 1.77 1.676 1.77.746 0 1.23-.376 1.383-.79h.027c-.004 1.316-.461 2.164-1.305 2.164-.664 0-1.008-.45-1.05-.82h-.684zm2.953-2.317c0 .696-.559 1.18-1.184 1.18-.601 0-1.144-.383-1.144-1.2 0-.823.582-1.21 1.168-1.21.633 0 1.16.398 1.16 1.23z"/>
                <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
              </svg>  CALENDARIO</h1>
        </div>
        <table class="table table-dark table-bordered" style="background-color:GAINSBORO;">
			<thead>
				<tr>
					<th scope="col">Film in sala oggi</th>
					<th scope="col">Film in programmazione</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td id="outputToday"></td>
					<td id="output"></td>
				</tr>

			</tbody>
		</table>

<%--       <div>
    <h3>Test pagination</h3>
    <h4>Film presenti in catalogo: ${totalItems}, Pagine totali:${totalPages}</h4>--%> 
        <%--Per vedere il link precedente eccetto la prima pagina --%>
        
<%--  		<c:if test="${currentPage != 1 }">
            <a href="http://localhost:9011/admin/films/${currentPage - 1}">Previous</a>
        </c:if>--%> 
        
        <%--Per vedere i numeri delle pagine. Il when serve per disabilitare il link della pagina corrente--%>
        
<%--  		<c:forEach begin="1" end="${totalPages}" var="i">
            <c:choose>
                <c:when test="${currentPage eq i}">
                    <td>${i}</td>
                </c:when>
                <c:otherwise>
                    <td><a href="http://localhost:9011/admin/films/${i}">${i}</a></td>
                </c:otherwise>
            </c:choose>
        </c:forEach>--%> 
        
        <%--Per visualizzare il prossimo link --%>
<%--    <c:if test="${currentPage lt totalPages}">
    <td><a href="http://localhost:9011/admin/films/${currentPage + 1}">Next</a></td>
</c:if>
    </div> --%>
</div>


<script src="/../../resources/js/calendario.js"></script>


<%@include file="footer.jsp"%>