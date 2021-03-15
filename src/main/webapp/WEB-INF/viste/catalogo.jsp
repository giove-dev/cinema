<%@include file="header.jsp"%>

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



                

  <!-- </div> -->          
   <!-- </div> -->
   <script src="/../../resources/js/logout.js"></script>
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