package br.andre.caio.atividade2.model;

import java.util.Iterator;

public class Estatistica {
	private int qtdMasculino;
	private int qtdFeminino;
	
	public int getQtdMasculino() {
		qtdMasculino++;
		return qtdMasculino;
	}
	public void setQtdMasculino(int qtdMasculino) {
		this.qtdMasculino = qtdMasculino;
	}
	public int getQtdFeminino() {
		qtdFeminino++;
		return qtdFeminino;
	}
	public void setQtdFeminino(int qtdFeminino) {
		this.qtdFeminino = qtdFeminino;
	}
	}
	
