<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="a"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="CSS/Style_list.css">
<link rel="stylesheet" href="CSS/Style.css">
<link rel="icon" href="img/Logo.png">
<title>List</title>
</head>
<header class="l-header" id="header">
        <nav class="nav bd-grid">
            <div class="nav__toggle" id="nav-toggle">
                <a href="#"><img src="img/menu.png"></a>
            </div>

            <a href="#" class="nav__logo"><img src="img/logo.png"></a>

            <div class="nav__menu" id="nav-menu">
                <ul class="nav__list">
                    <li class="nav__item"><a href="index" class="nav__link active1"><img src="img/home.png" alt=""></a></li>
                    <li class="nav__item"><a href="login" class="nav__link"><img src="img/user.png" alt=""></a></li>
                    <li class="nav__item"><a href="lista_Cliente" class="nav__link"><img src="img/settings.png" alt=""></a></li>
                    <li class="nav__item"><a href="" class="nav__link"><img src="img/log-out.png" alt=""></a></li>
                    
                     
                </ul>
            </div>
            <div class="nav_shop">
               
            </div>
        </nav>
    </header>
    <script src="JS/header.js"></script>
    
<body>

	 <table>
        <thead>
            <tr>
                <td class="id-style">Id</td>
                <td>Cliente</td>
                <td>Email</td>
                <td>N.Telefone</td>
                <td>Endereço</td>
                <td>Data</td>
                <td>Genero</td>
                <td>Tipo de Produto</td>
                <td class="editar">Editar</td>
                <td class="excluir">Excluir</td>
                
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${clientes }" var="c">
                <tr>
                    <td class="id-style">${c.id }</td>
                    <td>${c.nome }</td>
                    <td>${c.email }</td>
                    <td>${c.telefone }</td>
                    <td>${c.endereco }</td>
                    <td><a:formatDate pattern="dd/MM/yyyy" value="${c.data.time }"/></td>
                    <td>${c.genero }</td> 
                    <td>${c.produtoPref }</td>          
                    <td><a href="alterarCliente?idCliente=${c.id}"><img src="img/edit.png"></a></td>
                	<td><a href="excluirCliente?idCliente=${c.id}" onclick="return confirm('Deseja excluir?')"><img src="img/delete.png"></a></td>
                </tr>
		    </c:forEach>
        </tbody>
            <div class="btn">
                <a class="estatisticas" href="Estatistica"><img src="img/status.png" class="status"></a>
            </div>
    </table>
	
</body>
</html>