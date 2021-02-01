package br.com.tarcnux.escola_alf.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.tarcnux.escola_alf.entities.Aluno;

@Repository
public interface AlunoRepository 
	extends JpaRepository<Aluno, Long>{

}
