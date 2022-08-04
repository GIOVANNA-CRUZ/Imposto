<html>
<head>
<title>Calcular Imposto Renda</title>
<meta charset="UTF-8">
<style>
#salario {
	height: 40px;
	width: 300px;
	margin-left: 500px;
	margin-top: 30px;
	border-radius: 5px;
	border: none;
	background-color: #FFFAFA;
}

#enviar {
	background-color: #BC8F8F;
	width: 280px;
	height: 40px;
	border: 1px solid white;
	color: white;
	margin-top: 30px;
	font-weight: bold;
}

#enviar:hover {
	background-color: #8B4513;
}

#tituloImposto {
	color: black;
	margin-left: 490px;
	font-weight: normal;
	margin-top: 30px;
}

body {
	background-color: #FFE4E1;
}
</style>
</head>
<body>
	<h1 id="tituloImposto">Calcular Imposto de Renda</h1>
	<form action="respostaImposto.jsp" method="POST">
		<input type="number" id="salario" name="salario"
			placeholder="Informe o salário"> <input type="submit"
			value="Enviar" id="enviar">
	</form>

	<script>
		let salario = document.getElementById('salario');

		function validarSalario() {
			if (salario == null) {

				salario.setCustomValidity("Informe um valor");
				salario.reportValidity();
				return false;
			} else {
				salario.setCustomValidity("");
				return true;
			}
		}
	</script>
</body>
</html>