package br.com.tarcnux.escola_alf.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.tarcnux.escola_alf.entities.Gabarito;

public interface GabaritoRepository 
	extends JpaRepository<Gabarito, Long>{

}
