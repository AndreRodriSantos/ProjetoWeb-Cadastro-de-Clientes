<%@page import="br.andre.caio.atividade2.model.produtoPreferencia"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   	<link rel="stylesheet" href="CSS/Style.css">
   	<link rel="icon" href="img/Logo.png">
    <title>l o j a</title>
</head>
<body>
    <header class="l-header" id="header">
        <nav class="nav bd-grid">
            <div class="nav__toggle" id="nav-toggle">
                <a href="#"><img src="img/menu.png"></a>
            </div>

            <a href="#" class="nav__logo"><img src="img/Logo.png"></a>

            <div class="nav__menu" id="nav-menu">
                <ul class="nav__list">
                    <li class="nav__item"><a href="#home" class="nav__link active1"><img src="img/home.png" alt=""></a></li>
                    <li class="nav__item"><a href="login" class="nav__link"><img src="img/user.png" alt=""></a></li>
                    <li class="nav__item"><a href="lista_Cliente" class="nav__link"><img src="img/settings.png" alt=""></a></li>
                    <li class="nav__item"><a href="#home" class="nav__link"><img src="img/log-out.png" alt=""></a></li>
                    
                     
                </ul>
            </div>
            <div class="nav_shop">
                <a href="#shop"><img src="img/shopping-cart.png"></a>
            </div>
        </nav>
    </header>
    <script src="JS/header.js"></script>
    
    <main class="l-main">
        <!-- HOME -->
        <section class="home" id="home">
            <div class="home__container bg-grid">
                <div class="home__sorvete">
                    <div class="home__circle"></div>
                    <img src="img/sorvete-mike.png" class="home__img">
                </div>
    
                <div class="home__data">
                    <span class="home__new">Sorveteria Chilinho</span>
                    <h1 class="home__title">Quiosque de Sorvete <br>do Chilinho - DS</h1>
                    <p class="home__description">Conheça nossa Loja de Sorvete</p>
                    <a href="#" class="button">Explorar agora</a>
                </div>
            </div>        
        </section>

        <!-- STORY -->
        <section class="story">
            <div class="story__square">
                <img src="img/milk.jpg" class="story__img">
            </div>
                <div class="story__data">
                    <h1 class="home__title">Nossa história</h2>
                    
                        <h1 class="story__title">
                            O Sorvete de Respeito!
                        </h1>

                        <p class="story__description">
                            No nosso web-site você encontra os mais diversos tipos de sorvete.<br>
                            Nossa especialidade é levar doçura com uma receita de família, 
                            nossos sorvetes são feitos com insumos de origem italiana, além de 
                            serem produzidos de forma semi-artesanal.
                        </p>

                    <a href="#" class="button button--smll">Descobrir</a> 
                </div>
        </section>

        <!-- SHOP -->
        <section class="shop" id="shop">
            <div class="container">
                <div class="card">
                    <div class="shoeBackground">
                        <div class="gradients">
                            <div class="gradient second" color="blue"></div>
                            <div class="gradient" color="red"></div>
                            <div class="gradient" color="green"></div>
                            <div class="gradient" color="orange"></div>
                            <div class="gradient first" color="black"></div>
                        </div>
                        <h1 class="nike">sor<br>vete</h1>
                        <!-- <img src="img/visa.png" class="logo"> -->
                        <a href="#" class="share"><i class="fas fa-share-alt"></i></a>

                        <img src="img/sorvete-choc.png" class="shoe" color="blue">
                        <img src="img/sorvete-frut.png" class="shoe" color="red">
                        <img src="img/milk-shake.png" class="shoe" color="green">
                        <img src="img/sundae.png" class="shoe" color="orange">
                        <img src="img/picole.png" class="shoe show" color="black">

                    </div>
                    <div class="info">
                        <div class="shoeName">
                            <div>
                                <h1 class="big">Sorvetes Da Loja</h1>
                                <span class="new">Novo</span>
                            </div>
                            <h3 class="small">Sorvetes mais pedidos</h3>
                        </div>
                        <div class="description">
                            <h3 class="title">Informação do produto</h3>
                            <p class="text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis molestias veritatis libero consequatur? Laborum maiores cumque, libero aliquid dignissimos explicabo, similique aperiam quasi non odit dolore a modi expedita suscipit?</p>
                        </div>
                        <div class="color-container">
                            <h3 class="title">Sabores</h3>
                            <div class="colors">
                                <span class="color" primary="#2175f5" color="blue"></span>
                                <span class="color" primary="#f84848" color="red"></span>
                                <span class="color" primary="#29b864" color="green"></span>
                                <span class="color" primary="#ff5521" color="orange"></span>
                                <span class="color active" primary="#444" color="black"></span>
                            </div>
                        </div>
                        <div class="size-container">
                            <h3 class="title">N.pedidos</h3>
                            <div class="sizes">
                                <span class="size">1</span>
                                <span class="size">2</span>
                                <span class="size active">3</span>
                                <span class="size">4</span>
                                <span class="size">5</span>
                            </div>
                        </div>
                        <div class="buy-price">
                            <a href="#shop" class="buy"><img src="img/shopping-cart-while.png">Comprar</a>
                            <div class="price">
                                <img src="img/money.png">
                                <h1>29.99</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script src="JS/shop.js"></script>

        <!-- FORM COMPRAS -->
        <form class="payment" action="cadastro" >
            <h1 class="payTitle">Informação Pessoal</h1>
            <label for="">Nome e sobrenome</label>
            <input type="text" placeholder="Nome sobrenome" class="payInput">
            <label for="">Número de telefone</label>
            <input type="text" placeholder="+11 9 9002 8922" class="payInput">
            <label for="">Endereço</label>
            <input type="text" placeholder="São Paulo" class="payInput">
            <h1 class="payTitle">Informações do cartão</h1>
            <div class="cardIcons">
                <img src="img/visa.png" class="cardIcon">
                <img src="img/mastercard.png" class="cardIcon">
            </div>
            <input type="password" class="payInput" placeholder="Número do cartão">
            <div class="cardInfo">
                <input type="text" placeholder="mm" class="payInput sm">
                <input type="text" placeholder="yyyy" class="payInput sm">
                <input type="text" placeholder="cvv" class="payInput sm">
            </div>
            <button class="payButton">Confira!</button>
            <span class="close">X</span>          
        </form>
        <script src="JS/form-compra.js"></script>

        <!-- Funcionarios -->
        <section class="Funcionarios">

            <div class="container">
                <div class="card-fcn">
                    <div class="content">
                        <h2>Chilinho</h2>
                        <p>
                           Chilinho Sorveteiro tem um web-site da sorveteria mais
                           amada de São Paulo.
                        </p>
                        <a href="#">Saiba Mais</a>
                    </div>
                    <img src="img/chilinho sorveteiro.png">
                </div>
    
            </div>
    
        </section>
    </main>
    <!-- Botton contato -->
    <div class="Contato-Info bg-preto txt-branca">
        <div class="Contato-Info-Cont">
            <h2>Contato</h2>
            <p>Chilinho@outlook.com</p>
            <p>(11) 9 9002 8922</p>
        </div>
         <div class="redes-sociais">
            <a href="#" class="sociais"><img src="img/Group.svg"></a>

            <a href="#" class="sociais"><img src="img/Vector.svg"></a>
        </div>
        <div class="Cone"></div>
    </div><!-- Fechando Contato-Info -->
    <div class="Botao-Contato"></div>
    <script src="JS/btn-contato.js"></script>

    <footer class="footer-distributed">
        <section class="Final">
            <div class="onda onda1"></div>
            <div class="onda onda2"></div>
            <div class="onda onda3"></div>
            <div class="onda onda4"></div>
        </section>
        <div class="footer-left">
            <a href="#" class=""><img src="img/Logo.png"></a>

            <p class="footer-links">
                <a href="#">Home</a>
                |
                <a href="#">About</a>
                |
                <a href="#">Contact</a>
                |
                <a href="#">Blog</a>
            </p>

            <p class="footer-company-name">Copyright &copy; 2022 <strong>HoCH-DS</strong>
                All rights reserved</p>
        </div>

    </footer>
</body>
</html>