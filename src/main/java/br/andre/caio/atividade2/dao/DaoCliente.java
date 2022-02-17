package br.andre.caio.atividade2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.andre.caio.atividade2.model.Cliente;

public class DaoCliente {
	private Connection conexao;

	public DaoCliente() {
		conexao = ConnectionFactory.conectar();
	}

	public void inserir(Cliente cliente) {
		String sql = "insert into cliente"
				+ "(nome, idade, genero, endereco, email, telefone, produtoPref) values (?,?,?,?,?,?,?)";
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

	public List<Cliente> listar() {
		String sql = "select * from cliente order by nome asc";
		List<Cliente> lista = new ArrayList<Cliente>();
		PreparedStatement stmt;
		try {
			stmt = conexao.prepareStatement(sql);
			ResultSet result = stmt.executeQuery();
			while (result.next()) {
				Cliente c = new Cliente();
				c.setId(result.getLong("id"));
				c.setNome(result.getString("nome"));
				c.setEmail(result.getString("email"));
				c.setEndereco(result.getString("endereco"));
				c.setIdade(result.getInt("idade"));
				c.setGenero(result.getString("genero"));
				c.setTelefone(result.getString("telefone"));
				c.setProdutoPref(result.getString("produtoPref"));
				lista.add(c);
			}
			conexao.close();
			stmt.close();
			result.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lista;
	}
	public void excluir(long id) {
		String sql = "delete from cliente where id = ?";
		PreparedStatement stmt;
		try {
			stmt = conexao.prepareStatement(sql);
			stmt.setLong(1, id);
			stmt.execute();
			stmt.close();
			conexao.close();
		}catch(Exception e) {
			throw new RuntimeException(e);
		}
	}
}
