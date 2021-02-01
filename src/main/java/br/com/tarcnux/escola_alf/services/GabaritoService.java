package br.com.tarcnux.escola_alf.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.tarcnux.escola_alf.dto.GabaritoDTO;
import br.com.tarcnux.escola_alf.entities.Gabarito;
import br.com.tarcnux.escola_alf.repositories.GabaritoRepository;
import br.com.tarcnux.escola_alf.services.exceptions.ResourceNotFoundException;

@Service
public class GabaritoService {
	
	@Autowired
	private GabaritoRepository gabaritoRepository;
	
	@Transactional(readOnly = true)
	public Page<GabaritoDTO> findAllPaged(PageRequest pageRequest) {
		
		Page<Gabarito> pageGabarito = gabaritoRepository.findAll(pageRequest);
		
		return pageGabarito.map(Gabarito -> new GabaritoDTO(Gabarito));
	}

	@Transactional(readOnly = true)
	public GabaritoDTO findById(Long id) {
		Optional<Gabarito> objOptional = gabaritoRepository.findById(id);
		Gabarito entity = objOptional.orElseThrow(() -> new ResourceNotFoundException("Recurso não encontrado"));
		
		return new GabaritoDTO(entity);
	}
}
