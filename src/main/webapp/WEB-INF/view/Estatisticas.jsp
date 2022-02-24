<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Estatisticas</title>
</head>
<body>
<h1>Estatisticas gerais</h1>
	
	<h4>Quantidade de Clientes por gênero</h4>
	
	<p>Masculino: ${status.qtdMasculino }</p>
	<p>Feminino: ${status.qtdFeminino }</p>
	
	<h4>Quantidade de Clientes por Periodo do dia</h4>
	
	<p>Manhã: ${status.qtdDia }</p>
	<p>Tarde: ${status.qtdTarde }</p>
	<p>Noite: ${status.qtdNoite }</p>
	
	<h4>Quantidade de Clientes por dia da Semana</h4>
	
	<p>Domingo: ${status.dom }</p>
	<p>Segunda: ${status.seg }</p>
	<p>Terça: ${status.ter }</p>
	<p>Quarta: ${status.qua }</p>
	<p>Quinta: ${status.qui }</p>
	<p>Sexta: ${status.sex }</p>
	<p>Sábado: ${status.sab }</p>
</body>
</html>