<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Lista de Gêneros</title>
</head>
<body>
    <h1>Lista de Gêneros</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Ações</th>
        </tr>
        <c:forEach var="genero" items="${generos}">
            <tr>
                <td>${genero.id}</td>
                <td>${genero.nome}</td>
                <td>
                    <a href="editar/${genero.id}">Editar</a>
                    <a href="deletar/${genero.id}">Deletar</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="novo">Novo Gênero</a>
</body>
</html>