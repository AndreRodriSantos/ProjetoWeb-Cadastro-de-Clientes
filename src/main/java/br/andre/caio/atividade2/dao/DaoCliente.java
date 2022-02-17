package br.andre.caio.atividade2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import br.andre.caio.atividade2.model.Cliente;

public class DaoCliente {
 private Connection conexao;
 
 	public DaoCliente() {
 		conexao = ConnectionFactory.conectar();
 	}
 	
	public void inserir(Cliente cliente) {
		String sql = "insert into cliente" + "(nome, idade, genero, endereco, email, telefone, produtoPref) values (?,?,?,?,?,?,?)";
		PreparedStatement stmt;
		try {
			stmt = conexao.prepareStatement(sql);
			stmt.setString(1, cliente.getNome());
			stmt.setInt(2, cliente.getIdade());
			stmt.setString(3, cliente.getGenero());
			stmt.setString(4, cliente.getEndereco());
			stmt.setString(5, cliente.getEmail());
			stmt.setString(6, cliente.getTelefone());
			stmt.setString(7, cliente.getProdutoPref());
			stmt.execute();
			conexao.close();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
