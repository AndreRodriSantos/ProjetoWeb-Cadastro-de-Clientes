package br.andre.caio.atividade2.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {
	private final static String USUARIO = "root";
	private final static String SENHA = "";
	
	public static Connection conectar() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conexao = DriverManager.getConnection("jdbc:mysql://localhost/quiosque", USUARIO, SENHA);
			return conexao;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
}
