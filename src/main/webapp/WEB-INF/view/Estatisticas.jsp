<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Estatisticas</title>
<style>
*{
font-family: sans-serif;
}
h1{
	text-align: center;
	margin-bottom: 100px;
	background: linear-gradient(to right, #23756d, #41BFB3);
	color:white;
	
}
#principal {
	display: flex;
	flex-direction: row;
	justify-content: space-around;
	text-align: center;
}
#genero{
	background-color: blue;
	border-radius: 10px;
}
#periodo{
	background-color: orange;
	border-radius: 10px; 
}
#semana{
	background-color: red;
	border-radius: 10px; 
}
h4{
	margin: 20px;
	font-weight: bold;
}
</style>
</head>
<body>
	<h1>Estatisticas gerais</h1>
	<div id="principal">
		<div id="genero">
			<h4>Quantidade de Clientes por gênero</h4>
			<p>Masculino: ${status.qtdMasculino }</p>
			<p>Feminino: ${status.qtdFeminino }</p>
		</div>

		<div id="periodo">
			<h4>Quantidade de Clientes por Periodo do dia</h4>
			<p>Manhã: ${status.qtdDia }</p>
			<p>Tarde: ${status.qtdTarde }</p>
			<p>Noite: ${status.qtdNoite }</p>
		</div>

		<div id="semana">
			<h4>Quantidade de Clientes por dia da Semana</h4>
			<p>Domingo: ${status.dom }</p>
			<p>Segunda: ${status.seg }</p>
			<p>Terça: ${status.ter }</p>
			<p>Quarta: ${status.qua }</p>
			<p>Quinta: ${status.qui }</p>
			<p>Sexta: ${status.sex }</p>
			<p>Sábado: ${status.sab }</p>
		</div>
	</div>
</body>
</html>