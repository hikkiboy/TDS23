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
<fieldset>Cadastro de Aluno</fieldset> 
<label>Matricula:</label> <input value = "${aluno.matricula}" placeholder = "Digite sua matricula">
</form>
</div>
</body>
</html>