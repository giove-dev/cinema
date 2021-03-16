
<%@include file="header.jsp"%> 

<div class="container">
	<div class="row align-items-start ">
		<div class="col-11 col-sm-11 col-md-6 my-3">
               <p>Inserisci il tuo Username per trovare i tuoi biglietti</p>
<form class="d-flex" action="/biglietti/utente" method="post">
                    <input class="form-control me-2" type="search" name="keyword" placeholder="Ricerca..." aria-label="Search" width="30%">
                    <button class="btn btn-outline-success" type="submit" value="Search">CERCA</button>
                </form>
        </div>
    </div>
 </div>
<div class="fixed-bottom">
<%@include file="footer.jsp"%>
</div>