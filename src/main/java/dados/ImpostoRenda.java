package dados;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;

public class ImpostoRenda {

	public double calcularImpostoRenda(double salario) throws IOException {

		/* Base máxima do último e eventuais casos parecidos */

		FileReader arq = new FileReader("C:/estudos/imposto.app");
		BufferedReader dadosArquivo = new BufferedReader(arq);

		String linha;
		double valorImposto = 0;
		double valorFinal = 0;

		while ((linha = dadosArquivo.readLine()) != null) {
			String[] dadosList = linha.split(";");
			double baseMinima = Double.parseDouble(dadosList[0]);
			double baseMaxima = Double.parseDouble(dadosList[1]);
			double porcentagem = Double.parseDouble(dadosList[2]) / 100;

			if (salario < baseMinima) {
				valorImposto = 0;
			} else {

				if (salario <= baseMaxima || baseMaxima == 0) {
					valorImposto = salario - baseMinima;
					valorImposto = porcentagem * valorImposto;
				} else {
					valorImposto = baseMaxima - baseMinima;
					valorImposto = porcentagem * valorImposto;

				}

				valorFinal = valorFinal + valorImposto;

			}
		}
		return valorFinal;

	}
}
