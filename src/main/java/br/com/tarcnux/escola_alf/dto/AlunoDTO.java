package br.com.tarcnux.escola_alf.dto;

import java.io.Serializable;

import br.com.tarcnux.escola_alf.entities.Aluno;

public class AlunoDTO 
	implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private Long id_aluno;
	private String nome;
	
	public AlunoDTO() {
		
	}

	public AlunoDTO(Long id_aluno, String nome) {
		this.id_aluno = id_aluno;
		this.nome = nome;
	}
	
	public AlunoDTO(Aluno entity) {
		this.id_aluno = entity.getId_aluno();
		this.nome = entity.getNome();
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
		AlunoDTO other = (AlunoDTO) obj;
		if (id_aluno == null) {
			if (other.id_aluno != null)
				return false;
		} else if (!id_aluno.equals(other.id_aluno))
			return false;
		return true;
	}
	
}
