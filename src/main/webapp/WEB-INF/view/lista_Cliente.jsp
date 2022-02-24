<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="a"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Clientes</title>
<style>
*{
text-align: center;
font-family: sans-serif;
}
div{
display:flex;
justify-content: center;
}
h1{
	background: linear-gradient(to right, #23756d, #41BFB3);
	color: white;
}
th{
	background: linear-gradient(to right, #23756d, #41BFB3);
	color: white;
	
}
tr{

}
table{
 box-shadow: 0 0 20px 9px #41BFB3;
 margin-top: 30px;
 margin-bottom: 40px;
}
body{

}
a{
    width: 10%;
    padding: 5px 30px;
    cursor: pointer;
    margin: auto;
    border: 0;
    outline: none;
    border-radius: 30px;
    background-color: #41BFB3;
    text-decoration: none;
    color: white;
    font-weight: bold;
    font-size: 15px;
    box-shadow: 0 5px #666;
}

a:active {
  background-color: #23756d;
  box-shadow: 0 3px #666;
  transform: translateY(3px);
}

</style>
</head>
<body>
	<h1>Lista de Cliente</h1>
	<div>
	<table border="1" cellpadding="2px" cellspacing="0">
	<tr>
		<th>Id</th>
		<th>Nome</th>
		<th>Data de Nascimento</th>
		<th>Email</th>
		<th>Endereço</th>
		<th>Genero</th>
		<th>Telefone</th>
		<th>Produto de Preferência</th>
		<th>Excluir</th>
		<th>Alterar</th>
	<tr>
	<c:forEach items="${clientes }" var="c">
		<tr>
			<td>${c.id }</td>
			<td>${c.nome }</td>
			<td><a:formatDate pattern="dd/MM/yyyy" value="${c.data.time }"/></td>
			<td>${c.email }</td>
			<td>${c.endereco }</td>
			<td>${c.genero }</td>
			<td>${c.telefone }</td>
			<td>${c.produtoPref }</td>
			<td><a href="excluirCliente?idCliente=${c.id}" onclick="return confirm('Deseja excluir?')">Excluir</a></td>
			<td><a href="alterarCliente?idCliente=${c.id}">Alterar</a></td>
		</tr>
	</c:forEach>
	</table>
	</div>
	<a href="Estatistica" id="status">Estatisticas</a>
</body>
</html>