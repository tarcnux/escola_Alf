package br.com.tarcnux.escola_alf.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.tarcnux.escola_alf.dto.AlunoDTO;
import br.com.tarcnux.escola_alf.entities.Aluno;
import br.com.tarcnux.escola_alf.repositories.AlunoRepository;

@Service
public class AlunoService {
	
	@Autowired
	private AlunoRepository alunoRepository;
	
	@Transactional(readOnly = true)
	public Page<AlunoDTO> findAllPaged(PageRequest pageRequest) {
		
		Page<Aluno> pageAluno = alunoRepository.findAll(pageRequest);
		
		return pageAluno.map(aluno -> new AlunoDTO(aluno));
	}

}
