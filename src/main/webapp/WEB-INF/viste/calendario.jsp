<%@include file="header_calendario.jsp"%>

		<div class="riga" style="background-color:GAINSBORO;margin-top:1rem;margin-bottom:1rem">
            <h1 class="display-4 text-center"><svg xmlns="http://www.w3.org/2000/svg" style="background-color:GAINSBORO;margin-top:1rem;margin-bottom:1.5rem" width="60" height="60" fill="currentColor" class="bi bi-calendar-check-fill" viewBox="0 0 16 16">
				<path d="M4 .5a.5.5 0 0 0-1 0V1H2a2 2 0 0 0-2 2v1h16V3a2 2 0 0 0-2-2h-1V.5a.5.5 0 0 0-1 0V1H4V.5zM16 14V5H0v9a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2zm-5.146-5.146l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L7.5 10.793l2.646-2.647a.5.5 0 0 1 .708.708z"/>
			  </svg>  CALENDARIO</h1>
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