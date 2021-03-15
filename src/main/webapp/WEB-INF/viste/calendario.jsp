<%@include file="header_calendario.jsp"%>

		<div class="riga" style="background-color:GAINSBORO;margin-top:1rem;margin-bottom:1rem">
            <h1 class="display-4 text-center">CALENDARIO</h1>
        </div>

 <div class="container">
		<!-- titolo calendario -->

		<!-- Calendario con 2 colonne: 1 col. FILM IN SALA NON SCADUTI, 2 col. FILM ATTUALMENTE IN SALA. -->
		
		<table class="table table-success table-bordered" style="background-color:GAINSBORO;">
			<thead>
				<tr>
					<th scope="col">Film in sala oggi</th>
					<th scope="col">Film in programmazione</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td id="outputToday"></td>
					<td id="output"></td>
				</tr>

			</tbody>
		</table>


	</div>




<script src="/../../resources/js/calendario.js"></script>


<%@include file="footer.jsp"%>