
<%@include file="header.jsp"%>

<div class="riga">
        <div class="container">
            
            <div class="row">
                <span class="border border-secondary mt-5 bg-dark text-light">
                <div class="col-8 mx-auto mt-2">
                    <p><cite>Il cinema è l'unica forma d'arte che - 
                        proprio perché operante all'interno del concetto e dimensione di tempo - 
                        è in grado di riprodurre l'effettiva consistenza del tempo - 
                        l'essenza della realtà - fissandolo e conservandolo per sempre.</cite></p>
                        <p class="col text-right">Andrej Tarkovskij</p>
                </div>
                </span>
            </div>
            
        </div>
    </div>
        <div class="container-fluid text-center"> 
            <div class="container mt-5">
                <div class="row">
                    <div class="col-12">
                        <h2 class="center">NUOVE USCITE</h2>
                    </div>

                    <div class="col-12 col-sm-6 col-md-3 mb-2">
                        <img src="${film[1].locandina}" width="250rem"><br>
                        <h4> <a href="/films/dettaglio/${film[1].getId()}" style="text-decoration: none">${film[1].titolo}</a></h4>
                    </div>
                    
                    <div class="col-12 col-sm-6 col-md-3 mb-2">
                        <img src="${film[4].locandina}" width="250rem"><br>
                        <h4> <a href="/films/dettaglio/${film[4].getId()}" style="text-decoration: none">${film[4].titolo}</a></h4>
                    </div>
                    
                    <div class="col-12 col-sm-6 col-md-3 mb-2">
                        <img src="${film[6].locandina}" width="250rem"><br>
                        <h4> <a href="/films/dettaglio/${film[6].getId()}" style="text-decoration: none">${film[6].titolo}</a></h4>
                    </div>
                    
                    <div class="col-12 col-sm-6 col-md-3 mb-2">
                        <img src="${film[7].locandina}" width="250rem"><br>
                        <h4> <a href="/films/dettaglio/${film[7].getId()}" style="text-decoration: none">${film[7].titolo}</a></h4>
                    </div>
                    
                </div>
            </div>

            <div class="container mt-5 mb-5">
                <div class="row">
                    <div class="col-12">
                        <h2 class="center">CATEGORIE</h2>
                    </div>

                    <div class="col-12 col-sm-6 col-md-3 mb-2">
                        <img src="http://placekitten.com/200/300"><br>
                        <h4> <a href="/generi/${film[7].getGenere()}" style="text-decoration: none">${film[7].genere}</a></h4>
                    </div>
                    <div class="col-12 col-sm-6 col-md-3 mb-2">
                        <img src="http://placekitten.com/200/300"><br>
                        CATEGORIA 2
                    </div>
                    <div class="col-12 col-sm-6 col-md-3 mb-2">
                        <img src="http://placekitten.com/200/300"><br>
                        CATEGORIA 3
                    </div>
                    <div class="col-12 col-sm-6 col-md-3 mb-2">
                        <img src="http://placekitten.com/200/300"><br>
                        CATEGORIA 4
                    </div>
                </div>
            </div>
        </div>



<%@include file="footer.jsp"%>
