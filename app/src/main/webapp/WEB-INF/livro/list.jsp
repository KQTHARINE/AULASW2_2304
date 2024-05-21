<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8" />
        <title>Lista de Livros</title>
    </head>
    <body>
        <h1>Lista de Livros</h1>
 
        <a href="/livro/insert">Novo Livro</a>
        <table>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Gênero</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach var="item" items="${livros}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.titulo}</td>
                    <td>${item.genero.nome}</td>
                    <td>
                        <a href="/livros/update?id=${item.id}">Editar</a>
                        <a href="/livros/delete?id=${item.id}">Deletar</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>