<%@include file="header_calendario.jsp"%>

<span>
	<div class="container">
		<!-- titolo calendario -->
		<div class="d-inline-flex p-2 bd-highlight"
			style="background-color: antiquewhite;">
			<h1>Calendario</h1>
		</div>

		<!-- Calendario con 2 colonne: 1 col. FILM IN SALA NON SCADUTI, 2 col. FILM ATTUALMENTE IN SALA. -->
		
		<table class="table table-success table-bordered">
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
</span>



<script src="/../../resources/js/calendario.js"></script>


<%@include file="footer.jsp"%>