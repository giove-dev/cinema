<%@include file="header.jsp"%>


<c:forEach var="i" begin="0" end="${film.size()-1}">
        <div class="col 12 .col-sm-9 mt-5 ">
        	
        	
          
            <div class="row align-items-start mt-5 mx-5" style="background-color: rgba(223, 224, 223, 0.932); border: 2px solid rgba(0, 0, 0, 0.158)">
                
                
              
                

                
                <div class="col-11 col-sm-5 col-md-4 ms-3 mt-3 mb-3">
                    <img alt="" src="${film[i].locandina}" width="150rem">
                </div>
                
                <div class="col-11 col-sm-6 col-md-5 ms-3 mt-3 mb-3">
                <div>       <h3> <a href="/films/dettaglio/${film[i].getId()}" style="text-decoration: none; color: black">${film[i].titolo}</a></h3>
             
                </div></div>
                <div class="col-11 col-sm-11 col-md-2 ms-3 mt-3 mb-3">
                    <h3>Sala: ${film[i].sala}</h3> 
                    <h3>Data e Ora:</h3> 
                    <h4>${film[i].giorno}</h4> 
                    <h4>${film[i].ora}</h4> 
               
                </div>
            </div>    
                
                
             </c:forEach>

<div class="fixed-bottom">
<%@include file="footer.jsp"%>
</div>