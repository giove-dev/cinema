var btn = document.getElementById("btn");
var user = document.getElementById("user");
var pulsanti = document.getElementsByClassName('btn btn-outline-primary');

var p = [ ' A1 ', ' A2 ', ' A3 ', ' A4 ', ' B1 ', ' B2 ', ' B3 ', ' B4 ', ' C1 ',
' C2 ', ' C3 ', ' C4 ', ' D1 ', ' D2 ', ' D3 ', ' D4 ', ' E1 ', ' E2 ',
' E3 ', ' E4 ', ' A5 ', ' A6 ', ' A7 ', ' A8 ', ' B5 ', ' B6 ', ' B7 ',
' B8 ', ' C5 ', ' C6 ', ' C7 ', ' C8 ', ' D5 ', ' D6 ', ' D7 ', ' D8 ',
' E5 ', ' E6 ', ' E7 ', ' E8 ' ];

var quant = document.getElementById("quant");

var posto = document.getElementById("posto");

function riempi() {
  user.value = localStorage.getItem("username");
  console.log(user);
  localStorage.setItem("quantita", quant.value);
}

btn.addEventListener('click', riempi, false);

for (var i = 0; i < p.length; i++) {
  //posto.value = p[i];
  (function (index) {
    pulsanti[index].onclick = function () {
      posto.value += p[index]
    };
  })(i)
}

var http = new XMLHttpRequest();

const url = "http://localhost:9011/api/biglietti";
http.open("GET", url, true);
http.send();

http.onreadystatechange = function () {

  if (this.readyState == 4 && this.status == 200) {
    console.log(this.readyState);
    console.log(this.status);

    var myObj = JSON.parse(this.responseText);

    console.log(myObj)
    for (var i = 0; i < myObj.length; i++) {
      var seat = myObj[i].posto;
      console.log(seat);
      // var seat = myObj[i].posto;
      for (var j = 0; j < pulsanti.length; j++) {
        
        if (seat.includes(pulsanti[j].value)) {
          console.log(pulsanti[j].value)
          pulsanti[j].setAttribute("class", "btn btn-danger disabled")

        }

      }

    }
  }

}