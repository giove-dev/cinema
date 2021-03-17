<%@include file="header.jsp"%>

	<div class="riga" style="background-color:GAINSBORO;margin-top:1rem;margin-bottom:1rem">
            <h1 class="display-4 text-center"><svg xmlns="http://www.w3.org/2000/svg" style="background-color:GAINSBORO;margin-top:1rem;margin-bottom:1rem" width="60" height="60" fill="currentColor" class="bi bi-wallet2" viewBox="0 0 16 16">
				<path d="M12.136.326A1.5 1.5 0 0 1 14 1.78V3h.5A1.5 1.5 0 0 1 16 4.5v9a1.5 1.5 0 0 1-1.5 1.5h-13A1.5 1.5 0 0 1 0 13.5v-9a1.5 1.5 0 0 1 1.432-1.499L12.136.326zM5.562 3H13V1.78a.5.5 0 0 0-.621-.484L5.562 3zM1.5 4a.5.5 0 0 0-.5.5v9a.5.5 0 0 0 .5.5h13a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-13z"/>
			  </svg>     TARIFFE BIGLIETTI</h1>
        </div>
        
<div class="container">

	<div class="col-12">
		<p>
			<strong></strong>
		</p>
		<figure class="overlay-wrapper">
			<img src="/../../resources/img/sala.jpg" class="img-fluid" alt="sala" width="100%"
				style="">
			<figcaption class="overlay-panel overlay-black">
				<span></span>
			</figcaption>
		</figure>
	</div>
	<!-- titolo calendario -->

	<!-- Calendario con 2 colonne: 1 col. FILM IN SALA NON SCADUTI, 2 col. FILM ATTUALMENTE IN SALA. -->
	<table class="table table-bordered">
		<thead>
			<tr>
				<th scope="col">SPETTACOLI</th>
				<th scope="col">DAL LUNED&Igrave; AL VENERD&Igrave;</th>
				<th scope="col">SABATO E DOMENICA <br> FESTIVI E
					PRE-FESTIVI
				</th>
				</th>

			</tr>
		</thead>
		<tbody>
			<tr>
				<td><b> INTERO </b></td>
				<td>4,90&euro;</td>
				<td>7,90&euro;</td>
				<th scope="row">
				
                    <a class="btn btn-success btn-xs" href="http://localhost:9011/catalogo" role="button">Compra</a>
				</th>

			</tr>
		

		</tbody>
	</table>

	<div class="float-left">
		<div class="card" style="width: 23rem;">
			<div class="card-body">
			  <h5 class="card-title">Abbonamento       <span class="badge bg-info text-dark">   HOT <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-award-fill" viewBox="0 0 16 16">
				<path d="M8 0l1.669.864 1.858.282.842 1.68 1.337 1.32L13.4 6l.306 1.854-1.337 1.32-.842 1.68-1.858.282L8 12l-1.669-.864-1.858-.282-.842-1.68-1.337-1.32L2.6 6l-.306-1.854 1.337-1.32.842-1.68L6.331.864 8 0z"/>
				<path d="M4 11.794V16l4-1 4 1v-4.206l-2.018.306L8 13.126 6.018 12.1 4 11.794z"/>
			  </svg>   </span></h5>
			  <h6 class="card-subtitle mb-2 text-muted">5/10 ingressi</h6>
			  <p class="card-text">Compra un abbonamento e risparmia!</p>
			  <a class="btn btn-success btn-xs" href="/abbonamento/add" role="button">Acquista</a>
			 
			</div>
		  </div>
		
	</div>
	<br>



</div>


<%@include file="footer.jsp"%>
