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
    input[type="date"] {
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

    #volta{
        margin-left: 230px;
        margin-top: -25px;
    }

</style>

<body>
    <div id="formulario">
    <form method="POST" id="cadastroForm" action = "ClienteServlet"></form>
      <div>
        <img src="carreira-viajar.webp">
    </div>
    
    <h1 id="titulo">Sua viagem dos sonhos:</h1>
    
    <label for="Isabelle">Nome:</label>
    <input type="text" id="nome" name="nome" placeholder="(Ex: Isabelle)" value='${cliente.nome}' required><br><br>

    <label for="Sao Paulo">Origem:</label>
    <input type="text" id="origem" name="origem" placeholder="(Ex: S&atilde;o Paulo)" required><br><br>

    <label for="Minas Gerais ">Destino:</label>
    <input type="text" id="destino" name="destino" value = '${cliente.lugar}' placeholder="(Ex: Minas Gerais)" required><br><br>

    <label for="22/04">Data de Ida:</label>
    <input type="date" id="data_ida" name="data_ida" value = '${cliente.data_via}' required><br><br>

    <label for="02/05">Data de Volta:</label>
    <input type="date" id="data_volta" name="data_volta"  value = '${cliente.data_via}' required><br><br>

    <input type="submit" value="Reservar">

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