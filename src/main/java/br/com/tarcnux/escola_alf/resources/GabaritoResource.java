package br.com.tarcnux.escola_alf.resources;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.tarcnux.escola_alf.dto.GabaritoDTO;
import br.com.tarcnux.escola_alf.services.GabaritoService;

@RestController
@RequestMapping(value = "/gabaritos")
public class GabaritoResource {
	
	@Autowired
	private GabaritoService gabaritoService;
	
	@GetMapping
	public ResponseEntity<List<GabaritoDTO>> findAll() {
		
		List<GabaritoDTO> listGabaritos = gabaritoService.findAll();
		
		return ResponseEntity.ok().body(listGabaritos);
	}
}
