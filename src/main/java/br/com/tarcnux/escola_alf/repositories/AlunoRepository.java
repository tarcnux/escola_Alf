package br.com.tarcnux.escola_alf.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.tarcnux.escola_alf.entities.Aluno;

public interface AlunoRepository 
	extends JpaRepository<Aluno, Long>{

}
