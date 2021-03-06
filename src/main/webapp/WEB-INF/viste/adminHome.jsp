<%@include file="header.jsp"%>


<div class="container">
<div class="row text-center mt-5">
  <div class="col-12 col-sm-4 col-md-4">
    <div class="card " style="background-color:WHITESMOKE">
      <div class="card-body">
      <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" fill="currentColor" class="bi bi-person-square mb-3" viewBox="0 0 16 16">
                <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm12 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1v-1c0-1-1-4-6-4s-6 3-6 4v1a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12z"/>
              </svg>
        <h5 class="card-title">UTENTI</h5>
        <p class="card-text">Qua puoi gestire la lista utenti.</p>
        <a href="/admin/utenti" class="btn btn-secondary">USERS</a>
      </div>
    </div>
  </div>
  <div class="col-12 col-sm-4 col-md-4">
    <div class="card" style="background-color:WHITESMOKE">
      <div class="card-body">
      <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" fill="currentColor" class="bi bi-calendar-date mb-3" viewBox="0 0 16 16">
                <path d="M6.445 11.688V6.354h-.633A12.6 12.6 0 0 0 4.5 7.16v.695c.375-.257.969-.62 1.258-.777h.012v4.61h.675zm1.188-1.305c.047.64.594 1.406 1.703 1.406 1.258 0 2-1.066 2-2.871 0-1.934-.781-2.668-1.953-2.668-.926 0-1.797.672-1.797 1.809 0 1.16.824 1.77 1.676 1.77.746 0 1.23-.376 1.383-.79h.027c-.004 1.316-.461 2.164-1.305 2.164-.664 0-1.008-.45-1.05-.82h-.684zm2.953-2.317c0 .696-.559 1.18-1.184 1.18-.601 0-1.144-.383-1.144-1.2 0-.823.582-1.21 1.168-1.21.633 0 1.16.398 1.16 1.23z"/>
                <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
              </svg>
        <h5 class="card-title">CALENDARIO</h5>
        <p class="card-text">Calendario dei film presenti.</p>
        <a href="http://localhost:9011/admin/eventi" class="btn btn-secondary">PROGRAMMAZIONE</a>
      </div>
    </div>
  </div>
  <div class="col-12 col-sm-4 col-md-4">
    <div class="card" style="background-color:WHITESMOKE">
      <div class="card-body">
      <svg xmlns="http://www.w3.org/2000/svg"  width="48" height="48" fill="currentColor" class="bi bi-camera-reels-fill mb-3" viewBox="0 0 16 16">
                <path d="M6 3a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                <path d="M9 6a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                <path d="M9 6h.5a2 2 0 0 1 1.983 1.738l3.11-1.382A1 1 0 0 1 16 7.269v7.462a1 1 0 0 1-1.406.913l-3.111-1.382A2 2 0 0 1 9.5 16H2a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h7z"/>
              </svg>
        <h5 class="card-title">CATALOGO</h5>
        <p class="card-text">Qui puoi gestire i film.</p>
        <a href="/admin/films" class="btn btn-secondary">FILMS</a>
      </div>
    </div>
  </div>
</div>
</div>

<div class="container" style="margin-bottom:8rem">
<div class="row text-center mt-5">
  <div class="col-12 col-sm-6 col-md-6">
    <div class="card" style="background-color:WHITESMOKE">
      <div class="card-body ">
      <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" fill="currentColor" class="bi bi-collection-play-fill mb-1" viewBox="0 0 16 16">
                <path d="M2.5 3.5a.5.5 0 0 1 0-1h11a.5.5 0 0 1 0 1h-11zm2-2a.5.5 0 0 1 0-1h7a.5.5 0 0 1 0 1h-7zM0 13a1.5 1.5 0 0 0 1.5 1.5h13A1.5 1.5 0 0 0 16 13V6a1.5 1.5 0 0 0-1.5-1.5h-13A1.5 1.5 0 0 0 0 6v7zm6.258-6.437a.5.5 0 0 1 .507.013l4 2.5a.5.5 0 0 1 0 .848l-4 2.5A.5.5 0 0 1 6 12V7a.5.5 0 0 1 .258-.437z"/>
              </svg>
        <h5 class="card-title">SALA PROIEZIONE</h5>
        
        <p class="card-text">Visualizza i film delle varie sale.</p>
        <div class="row text-center mt-2">
        <ul>
        <a href="/admin/sala/1" class="btn btn-secondary">SALA 1</a>
        <a href="/admin/sala/2" class="btn btn-secondary">SALA 2</a>
        </ul>
        </div>
        
        <div class="row text-center ">
        <ul>
        <a href="/admin/sala/3" class="btn btn-secondary">SALA 3</a>
        <a href="/admin/sala/4" class="btn btn-secondary">SALA 4</a>
        </div>
        </ul>
      </div>
    </div>
  </div>
  <div class="col-12 col-sm-6 col-md-6">
    <div class="card" style="background-color:WHITESMOKE">
      <div class="card-body">
      <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" fill="currentColor" class="bi bi-plus-square-fill mb-3" viewBox="0 0 16 16">
                <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm6.5 4.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3a.5.5 0 0 1 1 0z"/>
              </svg>
        <h5 class="card-title">AGGIUNGI FILM</h5>
        <p class="card-text">Qui puoi aggiungere i film.</p>
        <a href="/admin/films/add" class="btn btn-secondary">ADD-FILM</a>
      </div>
    </div>
  </div>
</div>
</div>


<%@include file="footer.jsp"%>