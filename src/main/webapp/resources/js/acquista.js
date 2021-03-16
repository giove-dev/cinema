var btn = document.getElementById("btn");
var user = document.getElementById("user");
var pulsanti = document.getElementsByClassName('btn btn-outline-primary');

var quant = document.getElementById("quant");

var posto = document.getElementById("posto");
function riempi() {
    user.value = localStorage.getItem("username");
    console.log(user);
    localStorage.setItem("quantita", quant.value);
}

btn.addEventListener('click', riempi, false);




for (var i=0 ; i < pulsanti.length ; i++){
  (function(index){
    pulsanti[index].onclick = function(){
     posto.value= pulsanti[index].value
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
            for (var j = 0; j <pulsanti.length;j++){

           
       
                 console.log(seat)
                  console.log(pulsanti[j].value)
              
             
                if(pulsanti[j].value==seat){
                 pulsanti[j].setAttribute("class","btn btn-danger disabled")
                 console.log(seat + " questo coincide")
                }
                
              } 
              
            }
     
}

}