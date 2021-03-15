<%@include file="header.jsp"%>

   <div class="container">
            
            <div class="row">
                <span class="border border-secondary mt-5 bg-dark text-light text-center">
                <div class="col-8 mx-auto mt-2">
                    <p>Vuoi diventare parte del nostro staff?<br>
                        Cerchiamo persone motivate ed entusiaste 
                        con cui creare entusiasmanti esperienze di intrattenimento 
                        per ogni cliente. I nostri team si basano su quattro principali
                        pilastri: passione, fiducia, rispetto e qualità. <br>
                        Se ti riconosci in queste caratteristiche, compila il form. </p>
                       
                </div>
                </span>
            </div>
            
        </div>
        <div class="container  mt-5">
            <div class="row align-items-start ">
                <div class="col-md-3"></div>
                <div class="col-12 col-md-6">
                    <form>
                        <div class="mb-3">
                            <label for="Nome" class="form-label">Nome</label>
                            <input type="text" class="form-control" id="nome" aria-describedby="nome">
                        </div>
                        <div class="mb-3">
                            <label for="Cognome" class="form-label">Cognome</label>
                            <input type="text" class="form-control" id="cognome" aria-describedby="cognome">
                        </div>                      
                        <div class="mb-3">
                            <label for="Email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="Email" aria-describedby="email">
                        </div>
                        <div class="mb-3">
                            <label for="cinema" class="form-label">Cosa ti piacerebbe fare nel cinema?</label>
                            <input type="text" class="form-control" id="cinema" aria-describedby="cinema">
                        </div>
                        <div class="mb-3">
                            <label for="Categoria" class="form-label">In quale cinema vorresti lavorare?</label>
                            <input type="text" class="form-control" id="categoria" aria-describedby="categoria">
                        </div>
                        <div class="mb-3">
                            <label for="formFile" class="form-label">Inserisci il tuo CV</label>
                            <input class="form-control" type="file" id="formFile">
                          </div>
                        <div class="mb-3">
                            <label for="Richiesta" class="form-label">Lettera di presentazione</label>
                            <textarea class="form-control" id="richiesta" rows="3"></textarea>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary">INVIA</button>
                        </div>    
                    </form>

                </div>
                <div class="col-md-3"></div>
            </div>
        </div>



<%@include file="footer.jsp"%>