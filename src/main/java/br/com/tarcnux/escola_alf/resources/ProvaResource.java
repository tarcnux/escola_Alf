package br.com.tarcnux.escola_alf.resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import br.com.tarcnux.escola_alf.dto.ProvaDTO;
import br.com.tarcnux.escola_alf.services.ProvaService;

@RestController
@RequestMapping(value = "/provas")
public class ProvaResource {
	
	@Autowired
	private ProvaService provaService;
	
	@GetMapping
	public ResponseEntity<Page<ProvaDTO>> findAll(
			@RequestParam(value = "page", defaultValue = "0") Integer page,
			@RequestParam(value = "linesPerPage", defaultValue = "3") Integer linesPerPage,
			@RequestParam(value = "direction", defaultValue = "ASC") String direction,
			@RequestParam(value = "orderBy", defaultValue = "nome") String orderBy	
			) {
		
		PageRequest pageRequest = PageRequest.of(page, linesPerPage, 
				Direction.valueOf(direction), orderBy);
		
		Page<ProvaDTO> PageDTO = provaService.findAllPaged(pageRequest);
		
		return ResponseEntity.ok().body(PageDTO);
	}
	
	@GetMapping(value = "/{id}")
	public ResponseEntity<ProvaDTO> findById(@PathVariable Long id){
		ProvaDTO dto = provaService.findById(id);
		return ResponseEntity.ok().body(dto);
	}
}
