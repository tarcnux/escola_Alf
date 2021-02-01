package br.com.tarcnux.escola_alf.resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import br.com.tarcnux.escola_alf.dto.GabaritoDTO;
import br.com.tarcnux.escola_alf.services.GabaritoService;

@RestController
@RequestMapping(value = "/gabaritos")
public class GabaritoResource {
	
	@Autowired
	private GabaritoService gabaritoService;
	
	@GetMapping
	public ResponseEntity<Page<GabaritoDTO>> findAll(
			@RequestParam(value = "page", defaultValue = "0") Integer page,
			@RequestParam(value = "linesPerPage", defaultValue = "3") Integer linesPerPage,
			@RequestParam(value = "direction", defaultValue = "ASC") String direction,
			@RequestParam(value = "orderBy", defaultValue = "nome") String orderBy	
			) {
		
		PageRequest pageRequest = PageRequest.of(page, linesPerPage, 
				Direction.valueOf(direction), orderBy);
		
		Page<GabaritoDTO> PageDTO = gabaritoService.findAllPaged(pageRequest);
		
		return ResponseEntity.ok().body(PageDTO);
	}
}
