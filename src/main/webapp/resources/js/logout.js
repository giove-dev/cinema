var logout = document.getElementById("logout");
var home = document.getElementById("home");
var catalogo =document.getElementById("catalogo");
var logoutAdmin = document.getElementById("logoutAdmin");

logout.addEventListener("click", slogga,false);
home.addEventListener("click", diffHome,false);
catalogo.addEventListener("click",diffCatalogo,false);
logoutAdmin.addEventListener("click",slogga,false);

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