<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cadastro de Gênero</title>
</head>
<body>
    <h1>Cadastro de Gênero</h1>
    <form action="/generos" method="post">
        <input type="hidden" name="id" value="${genero.id}">
        <label>Nome:</label>
        <input type="text" name="nome" value="${genero.nome}">
        <button type="submit">Salvar</button>
    </form>
</body>
</html>