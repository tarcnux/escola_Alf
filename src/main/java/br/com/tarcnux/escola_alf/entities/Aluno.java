package br.com.tarcnux.escola_alf.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_aluno")
public class Aluno 
	implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id_aluno;
	private String nome;
	
	public Aluno() {
		
	}

	public Aluno(Long id_aluno, String nome) {
		this.id_aluno = id_aluno;
		this.nome = nome;
	}
	
	public Long getId_aluno() {
		return id_aluno;
	}

	public void setId_aluno(Long id_aluno) {
		this.id_aluno = id_aluno;
	}
	

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id_aluno == null) ? 0 : id_aluno.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Aluno other = (Aluno) obj;
		if (id_aluno == null) {
			if (other.id_aluno != null)
				return false;
		} else if (!id_aluno.equals(other.id_aluno))
			return false;
		return true;
	}

}
