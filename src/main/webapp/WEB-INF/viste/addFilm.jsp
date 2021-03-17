
<%@include file="header.jsp"%>

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
	<div class="col-11 col-sm-6 col-md-5 ms-2 mt-5 mb-5"> 
		<form action="addFilm" method="post">
			<h2>AGGIUNGI FILM</h2>
			<div class="row align-items-start">
				
				<div class="col-6 mb-3">
			<!--<label for="filmID" class="form-label">Film ID</label>
					<input type="text" class="form-control" id="filmID" aria-describedby="filmID"> -->		
				</div>
				<div class="col-6 mb-3">
			<!--<label for="userID" class="form-label">User ID</label>
					<input type="text" class="form-control" id="userID" aria-describedby="userID">-->		
				</div>
			</div>
			<div class="mb-3">
			  <label for="titolo" class="form-label">Titolo Film</label>
			  <input type="text" name="titolo" class="form-control" id="titolo" aria-describedby="titolo">
			</div>
			<div class="mb-3">
				<label for="genere" class="form-label">Genere</label>
				<input type="text" name="genere" class="form-control" id="genere" aria-describedby="titolo">
			</div>
			<div class="mb-3">
				<label for="descrizione" class="form-label">Descrizione</label>
				<textarea class="form-control" name="descrizione" id="descrizione rows="3"></textarea>
			</div>

			<div class="row align-items-start">
				<div class="col-5 mb-3">
					<label for="giorno" class="form-label">Data</label>
					<input  type="date" value="2021-04-01" required pattern="\d{4}-\d{2}-\d{2}" name="giorno" class="form-control" id="giorno" aria-describedby="filmID">
				</div>
				<div class="col-5 mb-3">
					<label for="ora" class="form-label">Ora inizio</label>
					<input type="time" requried pattern="(0[0-9]|1[0-9]|2[0-3])(:[0-5][0-9]){2}" name="ora" class="form-control" id="ora" aria-describedby="userID">
				</div>                   
				<div class="col-2 mb-3">
				
<label for="sala" class="form-label">Sala</label>
<select class="form-select" name ="sala" aria-label="Default select example">
  <option selected>N &#778;</option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="3">4</option>
</select>
			</div>
			</div>
			<div class="mb-3">
				<label for="link_trailer" class="form-label">Link al trailer su youtube</label>
				<input type="text" name="link_trailer" class="form-control" id="link_trailer" aria-describedby="link">
			</div>
			<div class="mb-3">
				<label for="locandina" class="form-label">Link locandina</label>
				<input type="text" id="takeThis" name="locandina" class="form-control" id="locandina" aria-describedby="link">
			</div>
			<button type="submit" class="btn btn-primary">AGGIUNGI</button>
		  </form>
	</div>
	
	
	<div class="col-12 col-sm-12 col-md-3 mt-5 mb-5"  >
		<img id="toChange"  src="http://placekitten.com/400/600"><br>
	</div>
</div>
<script type="text/javascript">

 var imgChange = document.getElementById("toChange");
    var take = document.getElementById("takeThis");

    take.addEventListener("change",changeSource,false);

    function changeSource(){
        imgChange.src= take.value;
    }

    </script>
<%@include file="footer.jsp"%>