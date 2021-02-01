package br.com.tarcnux.escola_alf.services;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
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
	public List<AlunoDTO> findAll() {
		
		List<Aluno> listAluno = alunoRepository.findAll();
		
		return listAluno.stream().map(aluno -> new AlunoDTO(aluno)).collect(Collectors.toList());
	}

}
