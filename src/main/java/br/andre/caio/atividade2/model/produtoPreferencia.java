package br.andre.caio.atividade2.model;

public enum produtoPreferencia {
	SORVETE("Sorvete"),
	MILKSHAKE("MilkShake"),
	PICOLE("Picole"),
	SANDUE("Sandue");

	String desc;
	
	private produtoPreferencia(String desc) {
		this.desc = desc;
	}
	
	@Override
	public String toString() {
		return this.desc;
	}	
}
