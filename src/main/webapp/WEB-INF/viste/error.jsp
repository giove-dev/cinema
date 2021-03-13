
<%@include file="header.jsp"%>

<div class="text-center">
        <div class="alert" role="alert">
            <img src="/../../resources/img/logo_2.png" class="img-fluid" alt="ERRORE" width="10%">
            <h4 class="alert-heading">Ops,qualcosa � andato storto.</h4>
            <p>Torna alla pagina HOME</p>
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
<%@include file="footer.jsp"%>
