package br.com.tarcnux.escola_alf.services;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.tarcnux.escola_alf.dto.GabaritoDTO;
import br.com.tarcnux.escola_alf.entities.Gabarito;
import br.com.tarcnux.escola_alf.repositories.GabaritoRepository;

@Service
public class GabaritoService {
	
	@Autowired
	private GabaritoRepository gabaritoRepository;
	
	@Transactional(readOnly = true)
	public List<GabaritoDTO> findAll() {
		
		List<Gabarito> listGabarito = gabaritoRepository.findAll();
		
		return listGabarito.stream().map(gabarito -> new GabaritoDTO(gabarito)).collect(Collectors.toList());
	}

}
