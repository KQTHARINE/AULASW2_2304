<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> EDIT GENDER </title>
</head>
<body>
    <h1> EDITAR GÊNERO </h1>
    <form action="/generos/update" method="post"> 
        <input type="hidden" name="id" value="${genero.id}" />
        <div> 
            <labe> NOME: </label>
            <input type="text" name="nome" value="${genero.nome}" />
        </div> 
        <a href="/generos/list"> VOLTAR </a>
        <button type="submit"> SALVAR </button>
    </form>
</body>
</html>