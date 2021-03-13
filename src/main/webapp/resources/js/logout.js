var logout = document.getElementById("logout");
var logoutAdmin = document.getElementById("logoutAdmin")
logout.addEventListener("click", slogga,false);
logoutAdmin.addEventListener("click", slogga,false);
function slogga(){
    window.setTimeout(function(){
        window.location.href="http://localhost:9011/home";
        }, 4);

        localStorage.clear();
}