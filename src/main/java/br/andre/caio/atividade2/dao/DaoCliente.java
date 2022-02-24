package br.andre.caio.atividade2.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import br.andre.caio.atividade2.model.Cliente;
import br.andre.caio.atividade2.model.Estatistica;
import br.andre.caio.atividade2.model.produtoPreferencia;

public class DaoCliente {
	private Connection conexao;

	public DaoCliente() {
		conexao = ConnectionFactory.conectar();
	}

	public void inserir(Cliente cliente) {
		String sql = "insert into cliente"
				+ "(nome, data, genero, endereco, email, telefone, produtoPref, horaCadastro, diaSemana, idade) values (?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement stmt;
		try {
			stmt = conexao.prepareStatement(sql);
			stmt.setString(1, cliente.getNome());
			stmt.setDate(2, new Date(cliente.getData().getTimeInMillis()));
			stmt.setString(3, cliente.getGenero());
			stmt.setString(4, cliente.getEndereco());
			stmt.setString(5, cliente.getEmail());
			stmt.setString(6, cliente.getTelefone());
			stmt.setInt(7, cliente.getProdutoPref().ordinal());
			

			// pega a data atual e converte somente para horas
			LocalDateTime agora = LocalDateTime.now();
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH");
			String hora = formatter.format(LocalDateTime.now());
			int horaConvertida = Integer.parseInt(hora);
			cliente.setHoraCadastro(horaConvertida);
			stmt.setInt(8, cliente.getHoraCadastro());

			// pega o dia da semana
			DateTimeFormatter dataformat = DateTimeFormatter.ofPattern("dd-MM-yyyy");
			String data = dataformat.format(LocalDateTime.now());
			GregorianCalendar gc = new GregorianCalendar();
			try {
				gc.setTime(new SimpleDateFormat("dd-MM-yyyy").parse(data));
			} catch (ParseException e) {
				e.printStackTrace();
			}
			int diaDaSemana = gc.get(GregorianCalendar.DAY_OF_WEEK);
			cliente.setDiaSemana(diaDaSemana);
			stmt.setInt(9, cliente.getDiaSemana());
			
			//faixa etária Jovem, Adulto, Idoso
			
			DateTimeFormatter formatter_ano = DateTimeFormatter.ofPattern("yyyy");
			String ano = formatter.format(LocalDateTime.now());
			int anoConvertido = Integer.parseInt(ano);
			
			int idadeResult = 0;
			stmt.setInt(10, cliente.getIdade());
			
			stmt.execute();
			conexao.close();
			stmt.close();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void atualizar(Cliente cliente) {
		String sql = "update cliente set nome = ?, data = ?, genero = ?, endereco = ?, email = ?, telefone = ?, produtoPref = ? where id = ?";
		PreparedStatement stmt;
		try {
			stmt = conexao.prepareStatement(sql);
			stmt.setString(1, cliente.getNome());
			stmt.setDate(2, new Date(cliente.getData().getTimeInMillis()));
			stmt.setString(3, cliente.getGenero());
			stmt.setString(4, cliente.getEndereco());
			stmt.setString(5, cliente.getEmail());
			stmt.setString(6, cliente.getTelefone());
			stmt.setInt(7, cliente.getProdutoPref().ordinal());
			stmt.setLong(8, cliente.getId());
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
				// criar um Calendar
				Calendar nascimento = Calendar.getInstance();
				// extrair o Date do result set
				Date dataBd = result.getDate("data");
				// setar a data do calendar pela data do Date
				nascimento.setTimeInMillis(dataBd.getTime());
				// setar a validade no produto
				c.setData(nascimento);
				c.setEmail(result.getString("email"));
				c.setEndereco(result.getString("endereco"));
				c.setGenero(result.getString("genero"));
				c.setTelefone(result.getString("telefone"));
				
			
				int posEnum = result.getInt("produtoPref");
				produtoPreferencia tipo = produtoPreferencia.values()[posEnum];
				c.setProdutoPref(tipo);
				
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

	public Cliente buscar(long idCliente) {
		String sql = "select * from cliente where id = ?";
		Cliente c = null;
		PreparedStatement stmt;
		try {
			stmt = conexao.prepareStatement(sql);
			stmt.setLong(1, idCliente);
			ResultSet result = stmt.executeQuery();
			if (result.next()) {
				c = new Cliente();	
				c.setId(result.getLong("id"));
				c.setNome(result.getString("nome"));
				c.setEmail(result.getString("email"));
				c.setEndereco(result.getString("endereco"));
				// criar um Calendar
				Calendar nascimento = Calendar.getInstance();
				// extrair o Date do resultset
				Date dataBd = result.getDate("data");
				// star a data do calendar pela data do Date
				nascimento.setTimeInMillis(dataBd.getTime());
				// setar a validae no produto
				c.setData(nascimento);
				c.setGenero(result.getString("genero"));
				c.setTelefone(result.getString("telefone"));
				
				int posEnum = result.getInt("produtoPref");
				produtoPreferencia tipo = produtoPreferencia.values()[posEnum];
				c.setProdutoPref(tipo);
				
				c.setDiaSemana(result.getInt("diaSemana"));
				c.setHoraCadastro(result.getInt("horaCadastro"));
			}
			conexao.close();
			stmt.close();
			result.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return c;
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
		} catch (Exception e) {
			throw new RuntimeException(e);
		}

	}

	public Estatistica contador() {
		String sql = "select * from cliente";
		PreparedStatement stmt;
		ResultSet result;
		Estatistica status = null;
		Cliente c = null;
		try {
			stmt = conexao.prepareStatement(sql);
			result = stmt.executeQuery();
			status = new Estatistica();
			int qtdMasc = 0, qtdFem = 0, dia = 0, tarde = 0, noite = 0;
			int dom = 0, seg = 0, ter = 0, qua = 0, qui = 0, sex = 0, sab = 0;
			int qtdJovem = 0, qtdAdulto = 0, qtdIdoso = 0;
			while (result.next()) {
				c = new Cliente();
				c.setGenero(result.getString("genero"));
				// Conta os generos
				if (c.getGenero().equals("Masculino")) {
					qtdMasc++;
					
				} else {
					qtdFem++;
					
				}
				
				// conta o periodo do Dia
				c.setHoraCadastro(result.getInt("horaCadastro"));
				if (c.getHoraCadastro() < 12) {
					dia++;
					
				} else if (c.getHoraCadastro() < 18) {
					tarde++;
					
				} else {
					noite++;
					

				}
				
				//conta o dias da semana
				c.setDiaSemana(result.getInt("diaSemana"));
				
				switch (c.getDiaSemana()) {
				case 1:
					dom++;					
					break;
				case 2:
					seg++;					
					break;
				case 3:
					ter++;					
					break;
				case 4:
					qua++;					
					break;
				case 5:
					qui++;					
					break;
				case 6:
					sex++;
					break;
				case 7:
					sab++;
					break;
				}
			}
			//Calendar cal = Calendar.getInstance();
			//int anoatual;
			//Calendar.get
			
			stmt.execute();
			stmt.close();
			result.close();
			conexao.close();
			
			//coloca os valores nos status
			status.setQtdMasculino(qtdMasc);
			status.setQtdFeminino(qtdFem);
			status.setQtdDia(dia);
			status.setQtdTarde(tarde);
			status.setQtdNoite(noite);
			
			//dias da semana
			status.setDom(dom);
			status.setSeg(seg);
			status.setTer(ter);
			status.setQua(qua);
			status.setQui(qui);
			status.setSex(sex);
			status.setSab(sab);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return status;
	}
}
