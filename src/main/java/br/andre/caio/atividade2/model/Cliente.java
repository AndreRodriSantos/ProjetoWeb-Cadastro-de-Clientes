package br.andre.caio.atividade2.model;

import java.util.Calendar;

import org.springframework.format.annotation.DateTimeFormat;

public class Cliente {
	private long id;
	private String nome;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Calendar data;
	private String email;
	private String endereco;
	private String genero;
	private String telefone;
	private String produtoPref;
	private int qtdMasc;
	private int qtdFem;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
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
	public String getProdutoPref() {
		return produtoPref;
	}
	public void setProdutoPref(String produtoPref) {
		this.produtoPref = produtoPref;
	}
	public int getQtdMasc() {
		return qtdMasc;
	}
	public void setQtdMasc(int qtdMasc) {
		this.qtdMasc = qtdMasc;
	}
	public int getQtdFem() {
		return qtdFem;
	}
	public void setQtdFem(int qtdFem) {
		this.qtdFem = qtdFem;
	}
	
}
