<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> GÊNEROS </title>
</head>
<body>
    <h1> GÊNEROS </h1>
        <a href="/generos/insert"> NOVO GÊNERO </a>
        <table>
          <tr> 
            <th> ID </th>
            <th> NOME </th>
            <th> &nbsp; </th>
          </tr>
          <c:forEach var="item" items="${generos}">
            <tr> 
              <td> ${item.id} </td>
              <td> ${item.nome} </td>
              <td> 
                  <a href="/generos/update?id=${item.id}"> EDITAR </a>
                  <a href="/generos/delete?id=${item.id}"> EXCLUIR </a>
              </td>
            </tr>
          </c:forEach>
        </table>
</body>
</html>