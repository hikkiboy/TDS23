<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cadastro Aluno</title>
</head>
<body>
<div>
<form method = "post" action= "AlunoServlet">
<fieldset> 
<legend> Cadastro de Aluno </legend> 

<label>matricula:</label> <input type = "text" id = "matricula" name= "matricula" value = "${aluno.matricula}" placeholder = "Digite sua matricula">
<label>nome: </label> <input type = "text" id = "nome" name= "nome" value = "${aluno.nome}" placeholder = "Digite seu nome">
<label>email: </label> <input type = "text" id = "email" name= "email" value = "${aluno.email}" placeholder = "Digite seu email">
<label>telefone: </label> <input type = "text" id = "telefone" name= "telefone" value = "${aluno.telefone}" placeholder = "Digite seu telefone">
<label>data: </label> <input type = "text" id = "dataCadastro" name= "data" value = "${aluno.dataCadastro}" placeholder = "Digite a data">

<label> escolha a a��o </label>



<select name = "acao" required>
<option selected value = "incluir">Incluir </option> 
<option selected value = "Alterar">Alterar </option> 
<option selected value = "Excluir">Excluir </option> 
<option selected value = "Consultar">Consultar </option> 
</select>
<input type = "submit" value = "Enviar">
<input type = "reset" value = "limpar">



</fieldset> 
</form>

</div>
</body>
</html>