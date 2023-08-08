<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
    <link rel = "stylesheet" href = "style.css">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="index.jsp">Menu<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="CadastroAluno.jsp">Cadastro</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Consulta</a>
              </li>
          </ul>
        </div>
      </nav>
<div class="bg-img"> </div>
<div class = "container">  
<form action = "GET" action = "alunoServlet" >
      <h1>Consultar aluno</h1>
  		
  		   <label for="nome"><b>Matricula</b></label>
       <input type="text" name="Nome" id = "nome" value = "${aluno.matricula}" placeholder="Insira o nome" required>
	  	
      <label for="nome"><b>Nome</b></label>
       <input type="text" name="Nome" id = "nome" value = "${aluno.nome}" placeholder="Insira o nome" required>
      
      <label for="email"><b>Email</b></label>
       <input type="text" name="Email" id = "Email" value = "${aluno.email}" placeholder="Insira o Email" required>	
  
      <label for="telefone"><b>Telefone</b></label>
       <input type="text" name="Telefone" id = "telefone" value = "${aluno.telefone}" placeholder="Insira o telefone" required>	
      
 
  
      <button type="submit" class="btn">Consultar</button>
    </form>
  </div> 