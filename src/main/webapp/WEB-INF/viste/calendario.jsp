<%@include file="header.jsp"%>

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



<script type="text/javascript">
	var today = new Date();
	var dd = String(today.getDate()).padStart(2, '0');
	var mm = String(today.getMonth() + 1).padStart(2, '0');
	var yyyy = today.getFullYear();

	today = yyyy + '-' + mm + '-' + dd;

	var http = new XMLHttpRequest();
	const url = "http://localhost:9011/api/films";
	http.open("GET", url, true);
	http.send();
	http.onreadystatechange = function() {

		if (this.readyState == 4 && this.status == 200) {
			console.log(this.readyState);
			console.log(this.status);

			var myObj = JSON.parse(this.responseText);
			console.log(myObj);
			console.log(myObj[2].giorno);

			var t = document.getElementById("outputToday");
			var x = document.getElementById("output");

			for (var i = 0; i < myObj.length; i++) {
				if (myObj[i].giorno == today) {
					t.innerHTML += '<h5><a href="/admin/films/dettaglio/' + myObj[i].id + '"' +
                        'style="text-decoration: none">'
							+ myObj[i].titolo + '</a></h5>'+ 
							'<h6> Sala: ' + myObj[i].sala + '</h6><h6>Ora: ' + myObj[i].ora + '</h6><hr>';
				} else {
					x.innerHTML += '<h5><a href="/admin/films/dettaglio/' + myObj[i].id + '"' +
                    'style="text-decoration: none">'
					+ myObj[i].titolo + '</a></h5>'+ 
					'<h6>Data: ' + myObj[i].giorno + '</h6><h6> Sala: ' 
					+ myObj[i].sala + '; Ora: ' + myObj[i].ora + '</h6><hr>';
				}
			}
		}
	}
</script>


<%@include file="footer.jsp"%>