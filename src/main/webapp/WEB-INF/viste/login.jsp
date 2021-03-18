<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<link rel="stylesheet" href="../../../../resources/css/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="/home"> <img
				src="/../../resources/img/logo_1.png" alt="logo" width="180px">

			</a> <a style="margin-right: 55rem">
				<button type="button" id="darkmode" class="btn btn-dark">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-brightness-high"
						viewBox="0 0 16 16">
                <path
							d="M8 11a3 3 0 1 1 0-6 3 3 0 0 1 0 6zm0 1a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z" />
              </svg>
				</button>
				 
				<button type="button" class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#exampleModal">
					<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-github" viewBox="0 0 16 16">
						<path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z"/>
					  </svg>
				  </button><!-- Button trigger modal -->
	
	  
				  <!-- Modal -->
				  <div class="modal fade"  id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered">
					  <div class="modal-content">
						<div class="modal-header">
						  <h2 class="modal-title" id="exampleModalLabel">Godetevi la presentazione</h2>
						  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
						 <div class="container-fluid">
							 <div class="row"  >
								 <div class="col-6">
										<img class="img-fluid"  src="../../../../resources/img/qrcodebackend.png" alt=""><br>
								  <h4>Progetto Completo</h4>
								 </div>
								 <div class="col-6">
									<img class="img-fluid"  src="../../../../resources/img/qr-codedesign.png" alt=""><br>
									<h4>Design</h4>
							 </div>
							 </div>
						 </div>
				   
						</div>
						<div class="modal-footer">
							<div class="animate__animated animate__tada" style="animation-duration: 30s;"><h2>Team 404 DA BEST <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-hand-thumbs-up-fill" viewBox="0 0 16 16">
								<path d="M6.956 1.745C7.021.81 7.908.087 8.864.325l.261.066c.463.116.874.456 1.012.964.22.817.533 2.512.062 4.51a9.84 9.84 0 0 1 .443-.05c.713-.065 1.669-.072 2.516.21.518.173.994.68 1.2 1.273.184.532.16 1.162-.234 1.733.058.119.103.242.138.363.077.27.113.567.113.856 0 .289-.036.586-.113.856-.039.135-.09.273-.16.404.169.387.107.819-.003 1.148a3.162 3.162 0 0 1-.488.9c.054.153.076.313.076.465 0 .306-.089.626-.253.912C13.1 15.522 12.437 16 11.5 16H8c-.605 0-1.07-.081-1.466-.218a4.826 4.826 0 0 1-.97-.484l-.048-.03c-.504-.307-.999-.609-2.068-.722C2.682 14.464 2 13.846 2 13V9c0-.85.685-1.432 1.357-1.616.849-.231 1.574-.786 2.132-1.41.56-.626.914-1.279 1.039-1.638.199-.575.356-1.54.428-2.59z"/>
							  </svg></h2></div>
						</div>
					  </div>
					</div>
				  </div>
			</a> <a class="navbar-brand" href="/home"> <svg
					xmlns="http://www.w3.org/2000/svg" width="30" height="30"
					fill="currentColor" class="bi bi-house-door" viewBox="0 0 16 16">
                <path
						d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z" />
            </svg>
			</a>
		</div>
	</nav>
	<div class="container  mt-5 " style="margin-bottom: 10rem;">
		<div class="row align-items-start ">
			<div class="col-md-3"></div>
			<div class="col-12 col-md-6 mb-5">
				<div class="riga"
					style="background-color: GAINSBORO; margin-top: 1rem; margin-bottom: 1rem">

					<h1 class="animate__animated animate__flipInY"
						style="text-align: center; font-size: 5rem">
						<svg xmlns="http://www.w3.org/2000/svg"
							style="margin-bottom: 1rem" width="66" height="66"
							fill="currentColor" class="bi bi-box-arrow-in-right"
							viewBox="0 0 16 16">
                <path fill-rule="evenodd"
								d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z" />
                <path fill-rule="evenodd"
								d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z" />
              </svg>
						LOGIN
					</h1>
				</div>
				<div class="form-floating">
					<input type="nome" class="form-control mt-5 mb-3" id="nome"
						aria-describedby="nome" placeholder="nome"> <label
						for="nome">Username</label>
				</div>
				<div class="form-floating">
					<input type="password" class="form-control mb-3" id="password"
						placeholder="password"> <label for="password">Password</label>
					<input type="checkbox" onclick="show()" style="margin-bottom: 0.7rem;"> Mostra password
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
						<a  style="font-size:1.3rem; text-decoration:none; color:black;" class="link" href="/registrazione">Non sei registrato? Registrati!</a>
					</div>
				</div>
			</div>
			<div class="col-md-3"></div>
		</div>
	</div>
	<script src="/../../resources/js/login.js"></script>
	<%@include file="footer.jsp"%>