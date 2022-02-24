package br.andre.caio.atividade2.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.andre.caio.atividade2.dao.DaoCliente;
import br.andre.caio.atividade2.model.Cliente;
import br.andre.caio.atividade2.model.Estatistica;
import br.andre.caio.atividade2.model.produtoPreferencia;

@Controller
public class AtividadeController {
	@RequestMapping("index")
	public String index(Model model) {
		model.addAttribute("tipos", produtoPreferencia.values());
		return "index";
	}
	@RequestMapping("salvarCliente")
	public String salvarCliente(Cliente cliente) {
		DaoCliente dao = new DaoCliente();
		if(cliente.getId() == null) {
			dao.inserir(cliente);
		}else {
			dao.atualizar(cliente);
		}
		
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
	@RequestMapping("alterarCliente")
	public String alterar(long idCliente, Model model) {
		DaoCliente dao = new DaoCliente();
		model.addAttribute("clientes", dao.buscar(idCliente));
		return "forward:index";
	}
	@RequestMapping("Estatistica")
	public String Estatisticas(Model model) {
		DaoCliente dao = new DaoCliente();
		model.addAttribute("status", dao.contador());
		return "Estatisticas";
	}
}
