var btn = document.getElementById("btn");
var user = document.getElementById("user");
var pulsanti = document.getElementsByClassName('btn btn-outline-primary');

var p = ['L1 ', 'L2 ', 'L3 ', 'L4 ', 'L5 ', 'L6 ', 'L7 ', 'L8 ', 'L9 ', 'L10 ', 'L11 ', 'L12 ', 'L13 ', 'L14 ', 'L15 ', 'L16 ', 'L17 ', 'L18 ', 'L19 ', 'L20 ',
  'R1 ', 'R2 ', 'R3 ', 'R4 ', 'R5 ', 'R6 ', 'R7 ', 'R8 ', 'R9 ', 'R10 ', 'R11 ', 'R12 ', 'R13 ', 'R14 ', 'R15 ', 'R16 ', 'R17 ', 'R18 ', 'R19 ', 'R20 '
];


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

      // var seat = myObj[i].posto;
      for (var j = 0; j < pulsanti.length; j++) {



        // console.log(seat)



        if (seat.includes(pulsanti[j].value)) {
          pulsanti[j].setAttribute("class", "btn btn-danger disabled")

        }
        //console.log(pulsanti[j].value)

      }

    }
  }

}