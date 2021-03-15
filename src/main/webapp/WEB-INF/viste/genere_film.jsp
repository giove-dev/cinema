<%@include file="header.jsp"%>


<c:forEach var="i" begin="0" end="${film.size()-1}">
        <div class="col 12 .col-sm-9 mt-5">
        	
        	
            <!--  <button type="button" class="btn btn-primary btn-sm" href=/admin/films/update/${film[i].id}>Modifica</button>
            <button type="button" class="btn btn-secondary btn-sm" href=/admin/films/delete?id=${film[i].getId()}>Cancella</button>-->
            <div class="row align-items-start mt-5 mb-5">
                
                
                <!--  <div class="col-2 ms-5">
                    <div class="form-check">
                        <input name="gruppo1" type="radio" id="radio1" checked>
                        <label for="radio1"></label>
                    </div>
                </div>-->
                
                <div class="col-1">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-film" viewBox="0 0 16 16">
                        <path d="M0 1a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V1zm4 0v6h8V1H4zm8 8H4v6h8V9zM1 1v2h2V1H1zm2 3H1v2h2V4zM1 7v2h2V7H1zm2 3H1v2h2v-2zm-2 3v2h2v-2H1zM15 1h-2v2h2V1zm-2 3v2h2V4h-2zm2 3h-2v2h2V7zm-2 3v2h2v-2h-2zm2 3h-2v2h2v-2z"/>
                    </svg>
                </div>
                
                <div class="col-3">
                    <img alt="" src="${film[i].locandina}" width="150rem">
                </div>
                
                <div class="col-5">
                <div>       <h3> <a href="/films/dettaglio/${film[i].getId()}" style="text-decoration: none">${film[i].titolo}</a></h3>
             
                </div></div>
                <div class="col-2">
                    <h3>Sala: ${film[i].sala}</h3> 
                    <h3>Data e Ora:</h3> 
                    <h4>${film[i].giorno}</h4> 
                    <h4>${film[i].ora}</h4> 
                <!--  <a class = "btn btn-primary btn-sm" href=/admin/films/update/${film[i].id} >modifica</a>
				<a class="btn btn-danger btn-sm" href=/admin/films/delete?id=${film[i].getId()} >elimina</a>-->
                </div>
                
                
                
             </c:forEach>


<%@include file="footer.jsp"%>
