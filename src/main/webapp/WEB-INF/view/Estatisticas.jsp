<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" href="img/Logo.png">
<title>Estatisticas</title>
<style>
* {
	font-family: sans-serif;
}

h1 {
	text-align: center;
	margin-bottom: 80px;
	background: linear-gradient(-45deg, #1b0a03, #723806);
	color: white;
	margin-top: 0;
	}
#graficos {
	display: flex;
	justify-content: space-around;
	flex-direction: row;	
	flex-wrap: wrap;
}
.grafico{
	max-height: 300px;
	max-width: 50%;
	margin-bottom: 80px;	
}
body {
	margin: 0;
</style>
</head>
<body>
	<h1>Estatisticas gerais</h1>

	<div id="graficos">
		<canvas id="ChartGenero" class="grafico"></canvas>
		<canvas id="ChartPeriodo" class="grafico"></canvas>
		<canvas id="ChartSemana" class="grafico"></canvas>
		<canvas id="ChartIdade" class="grafico"></canvas>
	</div>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.7.1/chart.min.js"></script>

<!-- Gráficos -->

	<script>
	
	//Grafico de Gêneros --------------------------
	  let labels = ['Masculino' , 'Feminino'];
	
	  let data = {
	    labels: labels,
	    datasets: [{
	      label: 'Quantidade por genero',
	      data: [${status.qtdMasculino } , ${status.qtdFeminino}],
	      backgroundColor: ['blue', 'pink']
	    }]
	  };
	
	  let config = {
	    type: 'pie',
	    data: data,
	    options: {

	    }
	  };
		
	  const ChartGenero = new Chart(
	    document.getElementById('ChartGenero'),
	    config
	  );
	  
	//Grafico de Periodo ---------------------------------------
	
	  labels = ['Manhã' , 'Tarde' , 'Noite'];
	
	  data = {
	    labels: labels,
	    datasets: [{
	      label: 'Quantidade por genero',
	      data: [${status.qtdDia } , ${status.qtdTarde}, ${status.qtdNoite}],
	      backgroundColor: ['yellow', 'orange' , 'darkblue']
	    }]
	  };
	
	  config = {
	    type: 'pie',
	    data: data,
	    options: {
	    }
	  };
		
	  const ChartPeriodo = new Chart(
	    document.getElementById('ChartPeriodo'),
	    config
	  );
	  
	//Grafico de Dia da Semana ---------------------------------------
		
	  labels = ['Dom' , 'Seg' , 'Ter' , 'Qua' , 'Qui' , 'Sex'  , 'Sab'];
	
	  data = {
	    labels: labels,
	    datasets: [{
	      label: 'Quantidade Dia da Semana',
	      data: [${status.dom }, ${status.seg }, ${status.ter }, ${status.qua }, ${status.qui }, ${status.sex }, ${status.sab}],
	      backgroundColor: ['gray', 'darkred' , 'darkblue', 'darkgreen', 'purple', 'brown', 'gray']
	    }]
	  };
	
	  config = {
	    type: 'pie',
	    data: data,
	    options: {
	    }
	  };
	  const ChartSemana = new Chart(
	    document.getElementById('ChartSemana'),
	    config
	  );
	  
	//Grafico da Faixa Etária---------------------------------------
		
	  labels = ['Jovem' , 'Adulto' , 'Idoso'];
	
	  data = {
	    labels: labels,
	    datasets: [{
	      label: 'Quantidade Dia da Semana',
	      data: [${status.jovem }, ${status.adulto }, ${status.idoso }],
	      backgroundColor: ['darkgray', 'gray' , 'black']
	    }]
	  };
	
	  config = {
	    type: 'pie',
	    data: data,
	    options: {
	    }
	  };
	  const ChartIdade = new Chart(
	    document.getElementById('ChartIdade'),
	    config
	  );
	  
</script>

</body>

</html>