<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
   
</head>
<body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="/home">
                <img src="/../../resources/img/logo_1.png" alt="logo" width="20%">
            </a>
            <a class="navbar-brand" href="/home">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-house-door" viewBox="0 0 16 16">
                <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z"/>
            </svg>
            </a>
        </div>
        </nav>
        <div class="container  mt-5">
            <div class="row align-items-start ">
                <div class="col-md-3"></div>
                <div class="col-12 col-md-6 mb-5">
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