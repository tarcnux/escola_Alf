package br.com.tarcnux.escola_alf.resources;

import java.util.ArrayList;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.tarcnux.escola_alf.entities.Gabarito;

@RestController
@RequestMapping(value = "/gabaritos")
public class GabaritoResource {
	
	@GetMapping
	public ResponseEntity<List<Gabarito>> findAll() {
		
		List<Gabarito> listGabaritos = new ArrayList<>();
		listGabaritos.add(new Gabarito(1L, "Gabarito01", 
				'A','B','C','D','A','B','C','D','A','A', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10));
		
		listGabaritos.add(new Gabarito(2L, "Gabarito02", 
				'B','B','C','C','D','D','E','E','A','A', 10, 20, 30, 40, 50, 60, 70, 80, 90, 10));
		
		return ResponseEntity.ok().body(listGabaritos);
	}
}
