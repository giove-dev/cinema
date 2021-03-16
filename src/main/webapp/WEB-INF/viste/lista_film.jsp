<%@include file="header.jsp"%>

    <!-- <h1>Lista film</h1> <c:forEach var="i" begin="0" end="${film.size()-1}">
    <h3><c:out value="${film[i].titolo}" /></h3> <li> <c:out value="${film[i].sala}"
    /> <c:out value="${film[i].giorno}" /> <c:out value="${film[i].ora}" /> <a class
    = "btn btn-warning" href=/admin/films/update/${film[i].id} >modifica</a> <a
    class="btn btn-danger" href=/admin/films/delete?id=${film[i].getId()}
    >elimina</a> </li> </c:forEach>-->

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
                    Admin<br>
                        <h3>Nome Cognome</h3>
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
                    <a href="/calendario" class="text-reset">
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

        
        <div class="col 12 col-sm-7 col-md-9 mt-4">
           <div class="riga" style="background-color:GAINSBORO;">
            <h1 class="display-6 text-center">Catalogo Film</h1>
        </div>
            <div class="row align-items-start mt-5 mb-5">
                <c:forEach var="i" begin="0" end="${film.size()-1}">
                <!-- <button type="button" class="btn btn-primary btn-sm"
                href=/admin/films/update/${film[i].id}>Modifica</button> <button type="button"
                class="btn btn-secondary btn-sm"
                href=/admin/films/delete?id=${film[i].getId()}>Cancella</button>-->
               

                    <!-- <div class="col-2 ms-5"> <div class="form-check"> <input name="gruppo1"
                    type="radio" id="radio1" checked> <label for="radio1"></label> </div> </div>-->

                <!--    <div class="col-1">
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
                    </div> -->
                    <div class="col-11 col-sm-5 col-md-3 ms-3 mb-3">
                        <img alt="" src="${film[i].locandina}" width="150rem">
                    </div>
                    <div class="col-11 col-sm-6 col-md-5 ms-3 mb-3">
                        <h3>
                            <a
                            href="/films/dettaglio/${film[i].getId()}"
                            style="text-decoration: none">${film[i].titolo}</a>
                        </h3>
                    </div>
                    <div class="col-11 col-sm-11 col-md-3 ms-3 mb-3">
                        <h3>Sala: ${film[i].sala}</h3>
                        <h3>Data e Ora:</h3>
                        <h4>${film[i].giorno}</h4>
                        <h4>${film[i].ora}</h4>
                        <a class="btn btn-primary btn-sm mb-1" href="/admin/films/update/${film[i].id}">modifica</a>
                        <a  id="wannaDelete"
                            class="btn btn-danger btn-sm mb-1"
                            href="/admin/films/delete?id=${film[i].getId()}">elimina
                        </a> 
                    
                        <button
                            type="button"
                            class="btn btn-sm mb-1 btn-danger"
                            data-bs-toggle="modal"
                            data-bs-target="#exampleModal"
                            data-bs-whatever="@mdo">elimina
                        </button>
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
            
                </c:forEach>
            </div>            
        <div>
        	Film presenti in catalogo: ${totalItems}, Pagine totali:${totalPages}
        </div>
	
        <div>
        <h1>Test pagination</h1>
        	
    		<%--Per vedere il link precedente eccetto la prima pagina --%>
    		
    		<c:if test="${currentPage != 1 }">
    			<a href="http://localhost:9011/admin/films/${currentPage - 1}">Previous</a>
    		</c:if>
    		
    		<%--Per vedere i numeri delle pagine. Il when serve per disabilitare il link della pagina corrente--%>
    		
    		<c:forEach begin="1" end="${totalPages}" var="i">
                <c:choose>
                    <c:when test="${currentPage eq i}">
                        <td>${i}</td>
                    </c:when>
                    <c:otherwise>
                        <td><a href="http://localhost:9011/admin/films/${i}">${i}</a></td>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
    		
    		<%--Per visualizzare il prossimo link --%>
    <c:if test="${currentPage lt totalPages}">
        <td><a href="http://localhost:9011/admin/films/${currentPage + 1}">Next</a></td>
    </c:if>
        </div>
    </div>

            <script>
        

                var modalDelete = document.getElementById('exampleModal')
               modalDelete.addEventListener('show.bs.modal', function (event) {

                    var button = event.relatedTarget

                  //  var recipient = button.getAttribute('data-bs-whatever')

                    var modalTitle = exampleModal.querySelector('.modal-title')
                    var modalBodyInput = exampleModal.querySelector('.modal-body input')

                    modalTitle.textContent = 'Elimina film'

                  //  modalBodyInput.value = recipient
               });
            </script>
<%@include file="footer.jsp"%>