<%@include file="header.jsp"%>

	<div class="riga" style="background-color:GAINSBORO;margin-top:1rem;margin-bottom:1rem">
            <h1 class="display-4 text-center">TARIFFE BIGLIETTI</h1>
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
				<th scope="col">DAL LUNEDì AL VENERDì</th>
				<th scope="col">SABATO E DOMENICA <br> FESTIVI E
					PRE-FESTIVI
				</th>
				</th>

			</tr>
		</thead>
		<tbody>
			<tr>
				<td><b> INTERO </b></td>
				<td>4,90€</td>
				<td>7,90€</td>
				<th scope="row">
					<button type="button" class="btn btn-secondary btn-xs">scegli</button>

				</th>

			</tr>
			<tr>
				<td><b>ABBONAMENTO</b><br> 5/10 entrate</td>
				<td>///€</td>
				<td>///€</td>
				<th scope="row"><a href="/abbonamento/add" class="text-reset">
						<h4>Acquista</h4>
				</a></th>

			</tr>

		</tbody>
	</table>

	<div class="float-left">
		<p>
			<b>INTERO</b>:............. <br> <b>ABBONAMENTO</b>: 5/10
			entrate in un mese.
		</p>
	</div>
	<br>



</div>


<%@include file="footer.jsp"%>
