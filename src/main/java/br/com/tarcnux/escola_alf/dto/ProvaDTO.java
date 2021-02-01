package br.com.tarcnux.escola_alf.dto;

import java.io.Serializable;

import br.com.tarcnux.escola_alf.entities.Prova;

public class ProvaDTO 
	implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private Long id;
	private Long idAluno;
	private Long idGabarito;	
	private Character resposta01;
	private Character resposta02;
	private Character resposta03;
	private Character resposta04;
	private Character resposta05;
	private Character resposta06;
	private Character resposta07;
	private Character resposta08;
	private Character resposta09;
	private Character resposta10;
	
	public ProvaDTO() {
		
	}


	public ProvaDTO(Long id, Long idAluno, Long idGabarito, Character resposta01, Character resposta02,
			Character resposta03, Character resposta04, Character resposta05, Character resposta06,
			Character resposta07, Character resposta08, Character resposta09, Character resposta10) {
		this.id = id;
		this.idAluno = idAluno;
		this.idGabarito = idGabarito;
		this.resposta01 = resposta01;
		this.resposta02 = resposta02;
		this.resposta03 = resposta03;
		this.resposta04 = resposta04;
		this.resposta05 = resposta05;
		this.resposta06 = resposta06;
		this.resposta07 = resposta07;
		this.resposta08 = resposta08;
		this.resposta09 = resposta09;
		this.resposta10 = resposta10;
	}


	public ProvaDTO(Prova entity) {
		this.id = entity.getId();
		this.idAluno = entity.getIdAluno();
		this.idGabarito = entity.getIdGabarito();
		this.resposta01 = entity.getResposta01();
		this.resposta02 = entity.getResposta02();
		this.resposta03 = entity.getResposta03();
		this.resposta04 = entity.getResposta04();
		this.resposta05 = entity.getResposta05();
		this.resposta06 = entity.getResposta06();
		this.resposta07 = entity.getResposta07();
		this.resposta08 = entity.getResposta08();
		this.resposta09 = entity.getResposta09();
		this.resposta10 = entity.getResposta10();
	}

	

	public Long getId() {
		return id;
	}


	public void setId(Long id) {
		this.id = id;
	}


	public Long getIdAluno() {
		return idAluno;
	}


	public void setIdAluno(Long idAluno) {
		this.idAluno = idAluno;
	}



	public Long getIdGabarito() {
		return idGabarito;
	}


	public void setIdGabarito(Long idGabarito) {
		this.idGabarito = idGabarito;
	}

	public Character getResposta01() {
		return resposta01;
	}


	public void setResposta01(Character resposta01) {
		this.resposta01 = resposta01;
	}


	public Character getResposta02() {
		return resposta02;
	}


	public void setResposta02(Character resposta02) {
		this.resposta02 = resposta02;
	}


	public Character getResposta03() {
		return resposta03;
	}


	public void setResposta03(Character resposta03) {
		this.resposta03 = resposta03;
	}


	public Character getResposta04() {
		return resposta04;
	}


	public void setResposta04(Character resposta04) {
		this.resposta04 = resposta04;
	}


	public Character getResposta05() {
		return resposta05;
	}


	public void setResposta05(Character resposta05) {
		this.resposta05 = resposta05;
	}


	public Character getResposta06() {
		return resposta06;
	}


	public void setResposta06(Character resposta06) {
		this.resposta06 = resposta06;
	}


	public Character getResposta07() {
		return resposta07;
	}


	public void setResposta07(Character resposta07) {
		this.resposta07 = resposta07;
	}


	public Character getResposta08() {
		return resposta08;
	}


	public void setResposta08(Character resposta08) {
		this.resposta08 = resposta08;
	}


	public Character getResposta09() {
		return resposta09;
	}


	public void setResposta09(Character resposta09) {
		this.resposta09 = resposta09;
	}


	public Character getResposta10() {
		return resposta10;
	}


	public void setResposta10(Character resposta10) {
		this.resposta10 = resposta10;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
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
		ProvaDTO other = (ProvaDTO) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}

}
