var btn = document.getElementById("btn");
var user = document.getElementById("user");


function riempi() {
    user.value = localStorage.getItem("username");
    console.log(user);
}

btn.addEventListener('click', riempi, false);