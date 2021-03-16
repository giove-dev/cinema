
<%@include file="header.jsp"%> 

<div class="container">
	<div class="row align-items-start ">
		<div class="col-11 col-sm-11 col-md-6 my-3">
<form class="d-flex" action="/biglietti/utente" method="post">
                    <input id="param" class="form-control me-2" type="hidden" name="keyword" placeholder="Ricerca..." aria-label="Search" width="30%">
                    <button class="btn btn-outline-success" type="submit" value="Search">I MIEI BIGLIETTI</button>
                </form>
        </div>
    </div>
 </div>
 
<script type="text/javascript">

var param = document.getElementById('param');

param.value = localStorage.getItem('username');
console.log(param);

</script>
 
<div class="fixed-bottom">
<%@include file="footer.jsp"%>
</div>