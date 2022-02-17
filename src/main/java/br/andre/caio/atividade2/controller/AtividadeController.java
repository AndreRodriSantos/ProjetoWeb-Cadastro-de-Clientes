package br.andre.caio.atividade2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.andre.caio.atividade2.dao.DaoCliente;
import br.andre.caio.atividade2.model.Cliente;

@Controller
public class AtividadeController {
	@RequestMapping("index")
	public String index() {
		return "index";
	}
	@RequestMapping("salvarCliente")
	public String salvarCliente(Cliente cliente) {
		DaoCliente dao = new DaoCliente();
		dao.inserir(cliente);
		
		return "redirect:index";
	}
}
