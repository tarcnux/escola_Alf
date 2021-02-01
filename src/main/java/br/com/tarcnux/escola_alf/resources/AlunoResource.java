package br.com.tarcnux.escola_alf.resources;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.tarcnux.escola_alf.dto.AlunoDTO;
import br.com.tarcnux.escola_alf.services.AlunoService;

@RestController
@RequestMapping(value = "/alunos")
public class AlunoResource {
	
	@Autowired
	private AlunoService alunoService;
	
	@GetMapping
	public ResponseEntity<List<AlunoDTO>> findAll() {
		
		List<AlunoDTO> listAlunos = alunoService.findAll();
		
		return ResponseEntity.ok().body(listAlunos);
	}
}
