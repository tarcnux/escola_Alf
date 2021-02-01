package br.com.tarcnux.escola_alf.resources;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.tarcnux.escola_alf.entities.Aluno;

@RestController
@RequestMapping(value = "/alunos")
public class AlunoResource {
	
	@GetMapping
	public ResponseEntity<List<Aluno>> findAll() {
		
		List<Aluno> listAlunos = new ArrayList<>();
		listAlunos.add(new Aluno(1L, "Alonso"));
		listAlunos.add(new Aluno(2L, "Beloto"));
		
		return ResponseEntity.ok().body(listAlunos);
	}
}
