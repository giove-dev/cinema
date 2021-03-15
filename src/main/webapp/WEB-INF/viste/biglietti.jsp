
<%@include file="header.jsp"%> 

               <p>Inserisci il tuo Username per trovare i tuoi biglietti</p>
<form class="d-flex" action="/biglietti/utente" method="post">
                    <input class="form-control me-2" type="search" name="keyword" placeholder="Ricerca..." aria-label="Search" width="30%">
                    <button class="btn btn-outline-success" type="submit" value="Search">CERCA</button>
                </form>

<%@include file="footer.jsp"%>