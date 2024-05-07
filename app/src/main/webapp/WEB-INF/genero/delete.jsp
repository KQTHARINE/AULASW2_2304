<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> REMOVE GENDER </title>
</head>
<body>
    <h1> REMOVER GÊNERO </h1>
    <p>Tem certeza que deseja excluir o gênero ${genero.nome}?</p>
    <form action="/generos/delete" method="post"> 
        <input type="hidden" name="id" value="${genero.id}" />
        <a href="/generos/list"> VOLTAR </a>
        <button type="submit"> SALVAR </button>
    </form>
</body>
</html>