package br.andre.caio.atividade2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
		return "redirect:lista_Cliente";
	}
	@RequestMapping("lista_Cliente")
	public String listarClientes(Model model) {
	DaoCliente dao = new DaoCliente();
	model.addAttribute("clientes", dao.listar());
	return "lista_Cliente";
	}
	@RequestMapping("excluirCliente")
	public String excluir(long idCliente) {
	DaoCliente dao = new DaoCliente();
	dao.excluir(idCliente);
	return "redirect: lista_Cliente";
	}
}
