package br.andre.caio.atividade2.model;

import java.util.Calendar;

import org.springframework.format.annotation.DateTimeFormat;

public class Cliente {
	private Long id;
	private String nome;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Calendar data;
	private String email;
	private String endereco;
	private String genero;
	private String telefone;
	private produtoPreferencia produtoPref;
	private int horaCadastro;
	private int diaSemana;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public Calendar getData() {
		return data;
	}
	public void setData(Calendar data) {
		this.data = data;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getGenero() {
		return genero;
	}
	public void setGenero(String genero) {
		this.genero = genero;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public produtoPreferencia getProdutoPref() {
		return produtoPref;
	}
	public void setProdutoPref(produtoPreferencia produtoPref) {
		this.produtoPref = produtoPref;
	}
	public int getHoraCadastro() {
		return horaCadastro;
	}
	public void setHoraCadastro(int horaCadastro) {
		this.horaCadastro = horaCadastro;
	}
	public int getDiaSemana() {
		return diaSemana;
	}
	public void setDiaSemana(int diaSemana) {
		this.diaSemana = diaSemana;
	}
	
}
