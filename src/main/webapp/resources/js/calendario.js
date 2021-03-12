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
					+ myObj[i].titolo + '</a></h5>' +
					'<h6> Sala: ' + myObj[i].sala + '</h6><h6>Ora: ' + myObj[i].ora + '</h6><hr>';
			} else {
				x.innerHTML += '<h5><a href="/admin/films/dettaglio/' + myObj[i].id + '"' +
					'style="text-decoration: none">'
					+ myObj[i].titolo + '</a></h5>' +
					'<h6>Data: ' + myObj[i].giorno + '</h6><h6> Sala: '
					+ myObj[i].sala + '; Ora: ' + myObj[i].ora + '</h6><hr>';
			}
		}
	}
}