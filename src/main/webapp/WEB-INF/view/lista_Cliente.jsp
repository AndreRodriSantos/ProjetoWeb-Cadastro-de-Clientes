<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="a"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Lista de Cliente</h1>
	<table border="1">
	<tr>
		<th>Id</th>
		<th>Nome</th>
		<th>Idade</th>
		<th>Email</th>
		<th>Endereço</th>
		<th>Genero</th>
		<th>Telefone</th>
		<th>Produto de Preferência</th>
		<th>Excluir</th>
	<tr>
	<c:forEach items="${clientes }" var="c">
		<tr>
			<td>${c.id }</td>
			<td>${c.nome }</td>
			<td>${c.idade }</td>
			<td>${c.email }</td>
			<td>${c.endereco }</td>
			<td>${c.genero }</td>
			<td>${c.telefone }</td>
			<td>${c.produtoPref }</td>
			<td><a href="excluirCliente?idCliente=${c.id}" onclick="return confirm('Deseja excluir?')">Excluir</a></td>
		</tr>
	</c:forEach>
	</table>
	
</body>
</html>