<%@include file="header.jsp"%>

<!-- 
<h1>Lista film</h1>

	
 		<c:forEach var="i" begin="0" end="${film.size()-1}">
				<h3><c:out value="${film[i].titolo}" /></h3>
			<li>
				<c:out value="${film[i].sala}" />
				<c:out value="${film[i].giorno}" />
				<c:out value="${film[i].ora}" />
				<a class = "btn btn-warning" href=/admin/films/update/${film[i].id} >modifica</a>
				<a class="btn btn-danger" href=/admin/films/delete?id=${film[i].getId()} >elimina</a>
			</li>
			
		</c:forEach>-->
	
	
	
	 <div class="row align-items-start">
        <div class="col-12 col-sm-5 col-md-3 text-light bg-dark vh-100">
            <div class="row align-items-start">
                
                <div class="col-3 mt-5 ms-3">
                    <svg xmlns="http://www.w3.org/2000/svg" width="100%" height="100%" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                        <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                        <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                    </svg>
                </div>
                <div class="col-8 mb-5 mt-3">
                    Admin<br>
                    <h3>Nome Cognome</h3>
                    <button type="button" class="btn btn-outline-light">LOGOUT</button>
                </div>
                
                <div class="col-2 mt-5 ms-2">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                        <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
                    </svg></a>
                </div>
                <div class="col-9 mt-5">
                    <a href="/admin/utenti" class="text-reset"><h4>USERS</h4></a>
                </div>
                
                <div class="col-2 ms-2">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar" viewBox="0 0 16 16">
                        <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
                      </svg>
                </div>
                <div class="col-9">
                    <a href="#" class="text-reset"><h4>CALENDARIO</h4></a>
                </div>
                
                <div class="col-2 ms-2">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-film" viewBox="0 0 16 16">
                        <path d="M0 1a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V1zm4 0v6h8V1H4zm8 8H4v6h8V9zM1 1v2h2V1H1zm2 3H1v2h2V4zM1 7v2h2V7H1zm2 3H1v2h2v-2zm-2 3v2h2v-2H1zM15 1h-2v2h2V1zm-2 3v2h2V4h-2zm2 3h-2v2h2V7zm-2 3v2h2v-2h-2zm2 3h-2v2h2v-2z"/>
                    </svg>
                </div>
                <div class="col-9">
                    <a href="/admin/films" class="text-reset"><h4>CATALOGO</h4></a>
                </div>
                
                <div class="col-2 ms-2">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-film" viewBox="0 0 16 16">
                        <path d="M0 1a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V1zm4 0v6h8V1H4zm8 8H4v6h8V9zM1 1v2h2V1H1zm2 3H1v2h2V4zM1 7v2h2V7H1zm2 3H1v2h2v-2zm-2 3v2h2v-2H1zM15 1h-2v2h2V1zm-2 3v2h2V4h-2zm2 3h-2v2h2V7zm-2 3v2h2v-2h-2zm2 3h-2v2h2v-2z"/>
                    </svg>
                </div>
                <div class="col-9">
                    <a href="/admin/sala/1" class="text-reset"><h4>SALA 1</h4></a>
                </div>
                
                <div class="col-2 ms-2">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
                        <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                        <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                    </svg>
                </div>
                <div class="col-9">
                    <a href="/admin/films/add" class="text-reset"><h4>AGGIUNGI FILM</h4></a>
                </div>
            </div>
        </div>
        
        
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
                <div>       <h3> <a href="/admin/films/dettaglio/${film[i].getId()}" style="text-decoration: none">${film[i].titolo}</a></h3>
             
                </div></div>
                <div class="col-2">
                    <h3>Sala: ${film[i].sala}</h3> 
                    <h3>Data e Ora:</h3> 
                    <h4>${film[i].giorno}</h4> 
                    <h4>${film[i].ora}</h4> 
                <a class = "btn btn-primary btn-sm" href=/admin/films/update/${film[i].id} >modifica</a>
				<a class="btn btn-danger btn-sm" href=/admin/films/delete?id=${film[i].getId()} >elimina</a>
                </div>
                
                
                
             </c:forEach>
                
            <!--  <button type="button" class="btn btn-primary btn-sm" href=/admin/films/update/${film[i].id}>Modifica</button>
            <button type="button" class="btn btn-secondary btn-sm" href=/admin/films/delete?id=${film[i].getId()}>Cancella</button>-->
            
        </div>
          
    </div>
    

<%@include file="footer.jsp"%>