
<%@include file="header.jsp"%>

<div class="text-center">
        <div class="alert" role="alert">
            <img src="/../../resources/img/logo_2.png" class="img-fluid" style="margin-bottom: 1.5rem; " alt="ERRORE" width="10%">
            <h4 class="alert-heading" style="color:white">Ops,qualcosa &#279; andato storto.</h4><br>
            <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-emoji-dizzy-fill" viewBox="0 0 16 16">
                <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zM4.146 5.146a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 1 1 .708.708l-.647.646.647.646a.5.5 0 1 1-.708.708L5.5 7.207l-.646.647a.5.5 0 1 1-.708-.708l.647-.646-.647-.646a.5.5 0 0 1 0-.708zm5 0a.5.5 0 0 1 .708 0l.646.647.646-.647a.5.5 0 0 1 .708.708l-.647.646.647.646a.5.5 0 0 1-.708.708l-.646-.647-.646.647a.5.5 0 1 1-.708-.708l.647-.646-.647-.646a.5.5 0 0 1 0-.708zM8 13a2 2 0 1 1 0-4 2 2 0 0 1 0 4z"/>
              </svg>
            <p style="color:white">Torna alla pagina HOME</p>
            <div class="animate__animated animate__fadeInDownBig"><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-arrow-90deg-down" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M4.854 14.854a.5.5 0 0 1-.708 0l-4-4a.5.5 0 0 1 .708-.708L4 13.293V3.5A2.5 2.5 0 0 1 6.5 1h8a.5.5 0 0 1 0 1h-8A1.5 1.5 0 0 0 5 3.5v9.793l3.146-3.147a.5.5 0 0 1 .708.708l-4 4z"/>
              </svg></div>
            <hr>
            
            <a class="btn btn-dark" id="backHome" href="">HOME</a>
        </div>
    </div>
 
 <script type="text/javascript">
   var back = document.getElementById("backHome");
   back.addEventListener("click",backHome,false);
   function backHome(){
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
    </script>

<div class="fixed-bottom"><%@include file="footer.jsp"%> </div>

