var logout = document.getElementById("logout");

logout.addEventListener("click", slogga,false);

function slogga(){
    window.setTimeout(function(){
        window.location.href="http://localhost:9011/home";
        }, 4);

        localStorage.clear();
}