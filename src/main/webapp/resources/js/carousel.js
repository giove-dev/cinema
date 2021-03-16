var http = new XMLHttpRequest();
	var c1 = document.getElementById("c1");
	var c2 = document.getElementById("c2");
	var c3 = document.getElementById("c3");

	const url = "http://localhost:9011/api/films";
	http.open("GET", url, true);
	http.send();

	http.onreadystatechange = function() {

		if (this.readyState == 4 && this.status == 200) {
			console.log(this.readyState);
			console.log(this.status);

			var myObj = JSON.parse(this.responseText);
			console.log(myObj)
			for (var i = 0; i < 4; i++) {

				c1.innerHTML += '<a href="/films/dettaglio/'
						+ myObj[i].id
						+ '"</a><img src="' + myObj[i]
                    .locandina +
                    '" class="img-fluid" alt="...">';
			}
			for (var i = 4; i < 8; i++) {

				c2.innerHTML += '<a href="/films/dettaglio/'
						+ myObj[i].id
						+ '"</a><img src="' + myObj[i]
                    .locandina +
                    '" class="img-fluid" alt="...">';
			}
			for (var i = 8; i < 12; i++) {

				c3.innerHTML += '<a href="/films/dettaglio/'
						+ myObj[i].id
						+ '"</a><img src="' + myObj[i]
                    .locandina +
                    '" class="img-fluid" alt="...">';
			}
		}
	}