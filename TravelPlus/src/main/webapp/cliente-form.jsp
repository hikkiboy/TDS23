<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel Plus | Cadastro</title>
    <link rel="icon" href="10247187.jpg">
    
</head>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: Arial, sans-serif;
        background-color: #9FABF1;
    }

    #formulario {
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 1);
        max-width: 400px;
        margin: 50px auto;
        padding: 20px;
    }

    img {
        display: block;
        margin: 0 auto;
        max-width: 100%;
    }

    #titulo {
        text-align: center;
        margin: 20px 0;
        font-size: 24px;
        color: #333;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        padding: 10px 20px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #0056b3; 
        text-decoration: underline; 
    }

    #rodape {
        text-align: center;
        margin-top: 30px;
        padding: 10px 0;
        background-color: #333;
        color: #fff;
    }

    #copy {
        max-width: 600px;
        margin: 0 auto;
        font-size: 10px;
    }
</style>

<body>
    <div id="formulario">
    <form method="POST" id="cadastroForm" action = "ClienteServlet">
      <div>
        <img src="img/felicidade.avif">
    </div>
    
    <h1 id="titulo">Faça seu cadastro:</h1>
    
    
    <label for="text"></label>
    
    <input type="text" id="text" placeholder="Insira seu nome" value='${Cliente.nome}' required><br>
    
        <label for="email"></label>
        <input type="text" id="email"  placeholder="E-mail" value='${Cliente.email}' required><br>

        <label for="email"></label>
        <input type="password" id="senha" placeholder="Senha" required><br>

        <label for="email"></label>
        <input type="password" id="confirme" placeholder="Confirmar senha" required><br>
       
        <input type="submit" value="Avançar">
    </form>
    </div>
    
    <div id="rodape">
        <footer>
            <div id="copy">
                <h1>&copy;Copyright 2023 - Andr&eacute; Ferreira 02, Gabriel dos Anjos 05, Gustavo Torres 09, Isabelle 10 - TDS</h1>
            </div>
        </footer>
    </div>

</body>
</html>