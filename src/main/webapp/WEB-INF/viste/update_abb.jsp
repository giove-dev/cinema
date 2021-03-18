<%@include file="header.jsp"%>


<form action="/abbonamento/updateAbb/${abbonamento.getId()}"
	method="post">

			  <label for="film_id" class="form-label"></label>

	<input type="hidden" name="rimanenza" class="form-control" id="rimanenza"
		aria-describedby="rimanenza">
	<input type="hidden" name="rim" class="form-control" id="rim"
		aria-describedby="rim" value="${abbonamento.rimanenza}">
		 
		<input
		type="hidden" name="utente_username" class="form-control"
		id="utente_username" aria-describedby="utente_username"
		value="${abbonamento.utente_username}">

	<button type="submit" id="btnX" class="btn btn-primary" value="update abb"></button>

</form>


<script type="text/javascript">

var rim = document.getElementById('rim').value;
var rimanenzaAbb = document.getElementById('rimanenza');
var bottoneRimanenza = document.getElementById('btnX');
document.addEventListener("DOMContentLoaded",automateRimanenza,false);
	console.log(rim);

	q = localStorage.getItem("quantita");
	console.log(q);
	
	rimanenzaAbb.value = rim - q;
	console.log(rimanenzaAbb);
	

	function automateRimanenza(){
		btnX.style.display = "none"
		btnX.click();
	}
</script>
<div class="fixed-bottom"><%@include file="footer.jsp"%></div>
