package br.com.tarcnux.escola_alf.services;

import java.util.Optional;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.tarcnux.escola_alf.dto.ProvaDTO;
import br.com.tarcnux.escola_alf.entities.Prova;
import br.com.tarcnux.escola_alf.repositories.ProvaRepository;
import br.com.tarcnux.escola_alf.services.exceptions.DataBaseException;
import br.com.tarcnux.escola_alf.services.exceptions.ResourceNotFoundException;

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
		Prova entity = objOptional.orElseThrow(() -> new ResourceNotFoundException("Recurso não encontrado"));
		
		return new ProvaDTO(entity);
	}

	@Transactional
	public ProvaDTO insert(ProvaDTO dto) {
		Prova entity = new Prova();
		
		entity.setIdAluno(dto.getIdAluno());
		entity.setIdGabarito(dto.getIdGabarito());
		entity.setResposta01(dto.getResposta01());
		entity.setResposta02(dto.getResposta02());
		entity.setResposta03(dto.getResposta03());
		entity.setResposta04(dto.getResposta04());
		entity.setResposta05(dto.getResposta05());
		entity.setResposta06(dto.getResposta06());
		entity.setResposta07(dto.getResposta07());
		entity.setResposta08(dto.getResposta08());
		entity.setResposta09(dto.getResposta09());
		entity.setResposta10(dto.getResposta10());
		
		entity = provaRepository.save(entity);
		
		return new ProvaDTO(entity);
	}

	@Transactional
	public ProvaDTO update(Long id, ProvaDTO dto) {
		try {
			Prova entity = provaRepository.getOne(id);
		
			entity.setResposta01(dto.getResposta01());
			entity.setResposta02(dto.getResposta02());
			entity.setResposta03(dto.getResposta03());
			entity.setResposta04(dto.getResposta04());
			entity.setResposta05(dto.getResposta05());
			entity.setResposta06(dto.getResposta06());
			entity.setResposta07(dto.getResposta07());
			entity.setResposta08(dto.getResposta08());
			entity.setResposta09(dto.getResposta09());
			entity.setResposta10(dto.getResposta10());
			
			entity = provaRepository.save(entity);
			return new ProvaDTO(entity);
			
			} catch(EntityNotFoundException e) {
				throw new ResourceNotFoundException(String.format("Id %d não encontrado", id));
			}
	}

	public void delete(Long id) {
		try {
			provaRepository.deleteById(id);
		} catch(EmptyResultDataAccessException e) {
			throw new ResourceNotFoundException(String.format("Id %d não encontrado", id));
		} catch(DataIntegrityViolationException e) {
			throw new DataBaseException("INtegrity Violation");
		}
		
	}
	
}
