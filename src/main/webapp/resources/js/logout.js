var logout = document.getElementById("logout");
var home = document.getElementById("home");
var catalogo =document.getElementById("catalogo");
var logoutAdmin = document.getElementById("logoutAdmin");
var mostraNascondi = document.getElementById("mostraBiglietti");
var abbonamento = document.getElementById("abbonamento");
logout.addEventListener("click", slogga,false);
home.addEventListener("click", diffHome,false);
catalogo.addEventListener("click",diffCatalogo,false);
var eventi= document.getElementById("eventi");
eventi.addEventListener("click",diffCalendar,false);
var dark = document.getElementById("darkmode");
dark.addEventListener("click",buio,false);
try {
   logoutAdmin.addEventListener("click",slogga,false); 
} catch (error) {
    console.log("questo errore compare se manca il pulsante di logout nelle pagine utenti")
}

document.addEventListener("DOMContentLoaded",mostra,false);

function slogga(){
    window.setTimeout(function(){
        window.location.href="http://localhost:9011/home";
        }, 4);

        localStorage.clear();
}
function diffHome(){
    var tipo= localStorage.getItem("Loggato");
    if (tipo=="A"){
        window.setTimeout(function(){
            window.location.href="http://localhost:9011/admin";
            }, 4);
            console.log(tipo);
    }else if(tipo =="B"){
        window.setTimeout(function(){
            window.location.href="http://localhost:9011/home";
            }, 4);
    }else if(tipo ==null){
        window.setTimeout(function(){
            window.location.href="http://localhost:9011/home";
            }, 4);
    }
    
}

function diffCatalogo() {
    var tipo= localStorage.getItem("Loggato");
    if (tipo=="A"){
        window.setTimeout(function(){
            window.location.href="http://localhost:9011/admin/films";
            }, 4);
            console.log(tipo);
    }else if(tipo =="B"){
        window.setTimeout(function(){
            window.location.href="http://localhost:9011/catalogo";
            }, 4);
    }else if(tipo ==null){
        window.setTimeout(function(){
            window.location.href="http://localhost:9011/catalogo";
            }, 4);
    }
}


function mostra(){
    var tipo= localStorage.getItem("Loggato");
   if (tipo==null || tipo=="A")  {
      mostraNascondi.style.display = "none";
      abbonamento.style.display = "none";
  }
}


function diffCalendar(){
    var tipo= localStorage.getItem("Loggato");
    if (tipo=="A"){
        window.setTimeout(function(){
            window.location.href="http://localhost:9011/admin/eventi";
            }, 4);
            console.log(tipo);
    }else if(tipo =="B"){
        window.setTimeout(function(){
            window.location.href="http://localhost:9011/calendario";
            }, 4);
    }else if(tipo ==null){
        window.setTimeout(function(){
            window.location.href="http://localhost:9011/calendario";
            }, 4);
    }
    
}

function buio(){
 var sfondo = document.body;
 sfondo.classList.toggle("dark")
}