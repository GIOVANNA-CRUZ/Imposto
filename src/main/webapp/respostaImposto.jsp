<%@page import="dados.ImpostoRenda"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resposta</title>
</head>
<body>

<style>
	body{
		background-color: #DDA0DD;
	}
	.respostaImposto{
		background-color:#BA55D3;
		width:400px;
		height:300px;
		margin-left:400px;
		border-radius:12px;
		margin-top:150px;
		padding-top:50px;
		padding-left:50px;
		font-size:18px;
	}
	
	#resposta{
		font-weight:bold;
		color:#4B0082;
		font-size:20px;
	}
	
</style>
	<%
	String salario = request.getParameter("salario");
	double salarioD = Double.parseDouble(salario);

	//chamar método da resposta aqui
	ImpostoRenda imposto = new ImpostoRenda();
	double valorFinal = imposto.calcularImpostoRenda(salarioD);
	%>
	
	<div class = "respostaImposto">
	<p id = "resposta">O valor a pagar de imposto é de :</p>
	<br>
	<%
	out.print(valorFinal);
	%>
	
	</div>
</body>
</html>