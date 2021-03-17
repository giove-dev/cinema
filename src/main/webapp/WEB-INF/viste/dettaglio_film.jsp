
<%@include file="header.jsp"%>

<div class="container-fluid">
  <div class="row">
	  <div class="col-12 col-sm-8 align-self-start p-2 bd-highlight ">
		  <h1>${film.titolo }</h1>
    </div>
    <div class="col-12 col-sm-4 align-self-end mt-5 ">
      <a class="btn btn-primary btn-sm mb-1" href="/biglietto/add/${film.id}">Acquista</a>
      <a class="btn btn-primary btn-sm mb-1" href="/abbonamento/buy/${film.id}">Acquista con abbonamento</a>
	  </div>
    
  </div>
	<div style="border: 1px solid rgba(0, 0, 0, 0.158)">
		<img src="${film.locandina }" alt=”biglia” style="float: left; margin: 5px;margin-top:15px"
			width="29%">
		<p>

			<dl
			class="row" style="background-color:rgb(202, 199, 199) ">
                <dt class="col-sm-3">Descrizione film</dt>
                <dd class="col-sm-9">${film.descrizione }</dd>
             
                <dt class="col-sm-3">Sala proiezione</dt>
                <dd class="col-sm-9">Sala ${film.sala }</dd>
              
                <dt class="col-sm-3">Data e Orario</dt>
                <dd class="col-sm-9">
                  <p>${film.giorno }</p>
                  <p>${film.ora }</p>
                </dd>
        
                <dt class="col-sm-3 text-truncate">Link trailer</dt>
                <dd class="col-sm-9">
                    <div class="ratio ratio-16x9">
                        <iframe
						src="${film.link_trailer }"
						title="YouTube video" allowfullscreen></iframe>
                      </div>
                </dd>
                
                
                  </dl>
                </dd>
              </dl>
           </p>
           </div>
        
          </div> 

<%@include file="footer.jsp"%>
