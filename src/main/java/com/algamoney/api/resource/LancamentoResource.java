package com.algamoney.api.resource;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.algamoney.api.event.RecursoCriadoEvent;
import com.algamoney.api.model.Lancamento;
import com.algamoney.api.repository.LancamentoRepository;

@RestController
@RequestMapping("/lancamentos")
public class LancamentoResource {

	@Autowired
	private LancamentoRepository repo; 
	
	@Autowired
	private ApplicationEventPublisher publisher;
	
	@GetMapping
	public List<Lancamento> listar(){
		return repo.findAll();
	}
	
	@GetMapping("/{codigo}")
	public ResponseEntity<Lancamento> buscaPeloCodigo(@PathVariable Long codigo){
		Lancamento lancamento = repo.findOne(codigo);
		
		return lancamento !=null ? ResponseEntity.ok(lancamento) : ResponseEntity.notFound().build();
	}
	
	@PostMapping
	public ResponseEntity<Lancamento> cadastro(@Valid @RequestBody Lancamento lancamento, HttpServletResponse response){
		
		Lancamento lancamentoSalvo = repo.save(lancamento);
		
		publisher.publishEvent(new RecursoCriadoEvent(this, response, lancamento.getCodigo()));
		
		return ResponseEntity.status(HttpStatus.CREATED).body(lancamentoSalvo);
	}
	
	
	
}
