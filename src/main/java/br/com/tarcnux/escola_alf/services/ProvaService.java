package br.com.tarcnux.escola_alf.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.tarcnux.escola_alf.dto.ProvaDTO;
import br.com.tarcnux.escola_alf.entities.Prova;
import br.com.tarcnux.escola_alf.repositories.ProvaRepository;

@Service
public class ProvaService {
	
	@Autowired
	private ProvaRepository provaRepository;
	
	@Transactional(readOnly = true)
	public Page<ProvaDTO> findAllPaged(PageRequest pageRequest) {
		
		Page<Prova> pageProva = provaRepository.findAll(pageRequest);
		
		return pageProva.map(Prova -> new ProvaDTO(Prova));
	}

	@Transactional(readOnly = true)
	public ProvaDTO findById(Long id) {
		Optional<Prova> objOptional = provaRepository.findById(id);
		Prova entity = objOptional.get();
		
		return new ProvaDTO(entity);
	}
}
