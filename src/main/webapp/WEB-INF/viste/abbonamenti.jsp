
<%@include file="header.jsp"%> 

<div class="container">
	<div class="row align-items-start ">
		<div class="col-11 col-sm-11 col-md-6 my-3">
<form id="tickets" class="d-flex" action="/abbonamenti/utente" method="post">
                    <input id="param" class="form-control me-2" type="hidden" name="keyword" placeholder="Ricerca..." aria-label="Search" width="30%">
                    <button id="letsgo" class="btn btn-outline-success" idtype="submit" style="display: none;" value="Search">I MIEI ABBONAMENTI</button>
                </form>
        </div>
    </div>
 </div>
 
<script type="text/javascript">


    var param = document.getElementById('param');

param.value = localStorage.getItem('username');
console.log(param);

document.addEventListener('DOMContentLoaded',submit,false);
function submit() {
        document.getElementById("letsgo").click(); // Simulates button click
        document.tickets.submit(); // Submits the form without the button
        window.location.href="http://localhost:9011/abbonamenti/utente/";
    }

    
</script>
 
<div class="fixed-bottom">
<%@include file="footer.jsp"%>
</div>