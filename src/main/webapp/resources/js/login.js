var http = new XMLHttpRequest();
const url = "http://localhost:9011/api/utenti";
http.open("GET", url, true);
http.send();

var user = document.getElementById("nome");
var pass = document.getElementById("password");
var reg = document.getElementById("reg");
var dark = document.getElementById("darkmode");
dark.addEventListener("click",buio,false);

http.onreadystatechange = function () {
    
    if (this.readyState == 4 && this.status == 200) {
        console.log(this.readyState);
        console.log(this.status);
        var myObj = JSON.parse(this.responseText);
        console.log(myObj);
        function logga(){
            for (var i = 0; i < myObj.length; i++) {
                console.log(myObj[i].username);
               
              
                    if  (user.value == myObj[i].username && pass.value == myObj[i].password && myObj[i].tipo==="B"){
                       
                        window.setTimeout(function(){
                            window.location.href="http://localhost:9011/home/";
                            }, 4);
                            localStorage.setItem("Loggato", "B");
                            localStorage.setItem("username", myObj[i].username);
                    }
                    else if  (user.value == myObj[i].username && pass.value == myObj[i].password && myObj[i].tipo==="A"){
                       
                        window.setTimeout(function(){
                            window.location.href="http://localhost:9011/admin";
                            }, 4);
                            localStorage.setItem("Loggato", "A");
                            localStorage.setItem("username", myObj[i].username);
                    }
                    // else{
                    //     alert("Hai sbagliato");
                    // }
                
            }
        }
    
        reg.addEventListener('click',logga,false);
         
    }
}



function show() {
    var x = document.getElementById("password");
    if (x.type === "password") {
      x.type = "text";
    } else {
      x.type = "password";
    }
  }


  function buio(){
    var sfondo = document.body;
    sfondo.classList.toggle("dark")
   }