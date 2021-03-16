var btn = document.getElementById("btn");
var user = document.getElementById("user");
var pulsanti = document.getElementsByTagName('button');

var posto = document.getElementById("posto");
function riempi() {
    user.value = localStorage.getItem("username");
    console.log(user);
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
        
        //console.log(myObj)
        for (var i = 0; i < myObj.length; i++) {
            var seat = myObj[i].posto;
            for (var i=0 ; i < pulsanti.length ; i++){
               // var seat = myObj[i].posto;
            
       
                 console.log(seat)
                  // console.log(pulsanti[i].value)
                   var valPulsanti = pulsanti[i].value
             
                 if(valPulsanti==seat){
                 pulsanti[i].setAttribute("class","btn btn-danger disabled")
                 console.log(seat + " questo coincide")
                }
                
              }
              
            }

     
}

}