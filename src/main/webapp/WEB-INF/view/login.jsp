<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="CSS/Style_login.css">
<link rel="icon" href="img/Logo.png">
<title>login</title>
</head>
<body>

    <div class="container">
        <div class="forms-continer">
            <div class="signin-signup">

                <div class="teste-F">
                    <div class="sign-in-form">
                        <div class="container-form">
                            <div class="title-form">Cadastro</div>
                            <form id="register" action="salvarCliente">
                            <input type="hidden" name="id" value="${clientes.id }">
                                <span class="f-text">Nome</span>
                                <div class="input-field">
                                    <i class="fas fa-user"></i>
                                    <input type="text" placeholder="Nome" required name="nome" value="${clientes.nome }">
                                </div>
                                <span class="f-text">Email</span>
                                <div class="input-field">
                                    <i class="fas fa-lock"></i>
                                    <input type="email" placeholder="Email " required name="email" value="${clientes.email }">
                                </div>
                                <span class="f-text">Senha</span>
                                <span class="f-text">Endereço</span>
                                <div class="input-field">
                                    <i class="fas fa-lock"></i>
                                    <input type="text" placeholder="Endereco" name="endereco" value="${clientes.endereco }">
                                </div>
                                <span class="f-text">Telefone</span>
                                <div class="input-field">
                                    <i class="fas fa-user"></i>
                                    <input type="tel" placeholder="Telefone" required name="telefone" value="${clientes.telefone }">
                                </div>
                                <span class="f-text">Data de Nacimento</span>
                                <div class="input-field">
                                    <i class="fas fa-lock"></i>
                                    <input type="date"  placeholder="Data de Nascimento" required name="data" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${clientes.data.time }"/>">
                                </div>
                                <div class="gender-details">
                                    <input type="radio" name="genero" id="Masculino" value="Masculino" required="required" value="${clientes.genero }">
                                    <input type="radio" name="genero" id="Feminino" value="Feminino" required="required" value="${clientes.genero }">
                                    <span class="gender-title">Gênero</span>
                                    <div class="category">
                                        <label for="Masculino">
                                            <span class="dot one"></span>
                                            <span class="gender">Masculino</span>
                                        </label>
                                        <label for="Feminino">
                                            <span class="dot two"></span>
                                            <span class="gender">Feminino</span>
                                        </label>
                                    </div>
                                </div>
                                
                                <div class="title-pr">Produto de Preferência</div>
                            <div class="custom-select">
                               
                				<select name="produtoPref" class="tp-produto">
                  					<c:forEach items="${tipos}" var="t">
                      			  		<option <c:if test="${cliente.produtoPref == t }">selected</c:if> value="${t}">${t.toString()}</option>
                  				 	</c:forEach>
                				</select>
                                <span class="custom-arrow"></span>
                            </div>
                                <div class="button-form">
                                	<button type="submit" class="btn-form">Registrar</button>
                            	</div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="teste-F">
                    <div class="sign-up-form">
                        	 <a  href="lista_Cliente"><button class="btn-lista">Lista</button></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="panels-container">
            <div class="panel left-painel">
                <div class="content">
                    <h3>Cadastro de Clientes</h3>
                    <p>Seja bem-vindo a nossa pagina para cadastro de clientes, clique para acessar a lista com todos os clientes da loja</p>
                    <button class="btn trasnparent" id="sign-up-btn">Mais</button>
                </div>
                <img src="img/sorvete-mike.png" class="image" alt="">
            </div>
            <div class="panel right-painel">
                <div class="content">
                    <h3>Lista de Clientes</h3>
                    <p>Acesse a lista de clientes para ver, editar e excluir </p>
                    <button class="btn trasnparent" id="sign-in-btn">Voltar</button>
                </div>
                <img src="img/ice.png" class="image" alt="">
            </div>
        </div>
    </div>
    <script src="JS/login.js"></script>
</body>
</html> 