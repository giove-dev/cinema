<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link rel="stylesheet" href="../../../../resources/css/style.css">
    <link
rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"
</head>
<body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/home">
                <img src="/../../resources/img/logo_1.png" alt="logo" width="180px">
                
            </a>
            <a style="margin-right:55rem">    <button type="button"  id="darkmode" class="btn btn-dark"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-brightness-high" viewBox="0 0 16 16">
                <path d="M8 11a3 3 0 1 1 0-6 3 3 0 0 1 0 6zm0 1a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
              </svg></button> </a>
            <a class="navbar-brand" href="/home">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-house-door" viewBox="0 0 16 16">
                <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z"/>
            </svg>
            </a>
        </div>
        </nav>
        <div class="container  mt-5 " style="margin-bottom: 10rem;">
            <div class="row align-items-start ">
                <div class="col-md-3"></div>
                <div class="col-12 col-md-6 mb-5">
                   <div class="riga" style="background-color:GAINSBORO;margin-top:1rem;margin-bottom:1rem">
          
            <h1 class="animate__animated animate__flipInY" style="text-align:center;font-size:5rem"><svg xmlns="http://www.w3.org/2000/svg"  style="margin-bottom:1rem" width="66" height="66" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
                <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
                <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
              </svg> LOGIN</h1>
        </div>
                   <div class="form-floating">
                    <input type="nome" class="form-control mt-5 mb-3" id="nome" aria-describedby="nome" placeholder="nome">
                    <label for="nome">Username</label> 
                   </div>
                   <div class="form-floating">
                   <input type="password" class="form-control mb-3" id="password" placeholder="password">
                   <label for="password">Password</label> 
                   <input type="checkbox" onclick="show()"> Mostra password
                </div>
             
                    <button type="submit" id="reg" class="btn btn-primary mb-3">LOGIN</button>
                    <!--   <form>
                  
                        <div class="mb-3">
                            <label for="Nome" class="form-label">Username</label>
                            <input type="nome" class="form-control" id="nome" aria-describedby="nome">
                        </div>
                        <div class="mb-3">
                            <label for="Password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password">
                        </div>
                        <div class="mb-3 form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Ricordami</label>
                        </div>
                        <button type="submit" id="reg" class="btn btn-primary">LOGIN</button>
                    </form> -->
                 
                    <div class="row align-items-start ">
                        <div class="col-md-6">
                            <a class="link" href="#">Password dimenticata?</a>
                        </div>
                        <div class="col-md-6">
                            <a class="link" href="#">Non sei registrato? Registrati!</a>
                        </div> 
                    </div>   
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
        <script src="/../../resources/js/login.js"></script>
        <%@include file="footer.jsp"%>