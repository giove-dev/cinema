
<%@include file="header.jsp"%>

<div class="container-fluid">
	<div class="d-inline-flex p-2 bd-highlight">
		<h1>${film[id-1].titolo }</h1>
	</div>
	<div style="border: 1px solid rgba(0, 0, 0, 0.158)">
		<img src="${film[id-1].locandina }" alt=”biglia” style="float: left; margin: 5px"
			width="29%">
		<p>

			<dl
			class="row">
                <dt class="col-sm-3">Descrizione film</dt>
                <dd class="col-sm-9">${film[id-1].descrizione }</dd>
             
                <dt class="col-sm-3">Sala proiezione</dt>
                <dd class="col-sm-9">Sala ${film[id-1].sala }</dd>
              
                <dt class="col-sm-3">Data e Orario</dt>
                <dd class="col-sm-9">
                  <p>${film[id-1].giorno }</p>
                  <p>${film[id-1].ora }</p>
                </dd>
        
                <dt class="col-sm-3 text-truncate">Link trailer</dt>
                <dd class="col-sm-9">
                    <div class="ratio ratio-16x9">
                        <iframe
						src="${film[id-1].link_trailer }"
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
