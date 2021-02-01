package br.com.tarcnux.escola_alf.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.tarcnux.escola_alf.entities.Prova;

@Repository
public interface ProvaRepository 
	extends JpaRepository<Prova, Long>{

}
