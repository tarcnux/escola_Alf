package br.com.tarcnux.escola_alf.services;

import java.util.Optional;

import javax.persistence.EntityNotFoundException;

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

	@Transactional
	public GabaritoDTO insert(GabaritoDTO dto) {
		Gabarito entity = new Gabarito();
		
		entity.setNome(dto.getNome());
		entity.setPeso01(dto.getPeso01());
		entity.setPeso02(dto.getPeso02());
		entity.setPeso03(dto.getPeso03());
		entity.setPeso04(dto.getPeso04());
		entity.setPeso05(dto.getPeso05());
		entity.setPeso06(dto.getPeso06());
		entity.setPeso07(dto.getPeso07());
		entity.setPeso08(dto.getPeso08());
		entity.setPeso09(dto.getPeso09());
		entity.setPeso10(dto.getPeso10());
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
		
		entity = gabaritoRepository.save(entity);
		
		return new GabaritoDTO(entity);
	}

	@Transactional
	public GabaritoDTO update(Long id, GabaritoDTO dto) {
		try {
			Gabarito entity = gabaritoRepository.getOne(id);
			entity.setNome(dto.getNome());
			entity.setPeso01(dto.getPeso01());
			entity.setPeso02(dto.getPeso02());
			entity.setPeso03(dto.getPeso03());
			entity.setPeso04(dto.getPeso04());
			entity.setPeso05(dto.getPeso05());
			entity.setPeso06(dto.getPeso06());
			entity.setPeso07(dto.getPeso07());
			entity.setPeso08(dto.getPeso08());
			entity.setPeso09(dto.getPeso09());
			entity.setPeso10(dto.getPeso10());
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
			
			entity = gabaritoRepository.save(entity);
			return new GabaritoDTO(entity);
			
			} catch(EntityNotFoundException e) {
				throw new ResourceNotFoundException(String.format("Id %d não encontrado", id));
			}
	}
}
