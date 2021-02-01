package br.com.tarcnux.escola_alf.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_gabarito")
public class Gabarito 
	implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String nome;
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
	private Integer peso01;
	private Integer peso02;
	private Integer peso03;
	private Integer peso04;
	private Integer peso05;
	private Integer peso06;
	private Integer peso07;
	private Integer peso08;
	private Integer peso09;
	private Integer peso10;
	
	
	public Gabarito() {
		
	}


	public Gabarito(Long id, String nome, Character resposta01, Character resposta02, Character resposta03, Character resposta04,
			Character resposta05, Character resposta06, Character resposta07, Character resposta08, Character resposta09, Character resposta10,
			Integer peso01, Integer peso02, Integer peso03, Integer peso04, Integer peso05, Integer peso06, Integer peso07, Integer peso08,
			Integer peso09, Integer peso10) {
		this.id = id;
		this.nome = nome;
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
		this.peso01 = peso01;
		this.peso02 = peso02;
		this.peso03 = peso03;
		this.peso04 = peso04;
		this.peso05 = peso05;
		this.peso06 = peso06;
		this.peso07 = peso07;
		this.peso08 = peso08;
		this.peso09 = peso09;
		this.peso10 = peso10;
	}


	public Long getid() {
		return id;
	}


	public void setid(Long id) {
		this.id = id;
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
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


	public Integer getPeso01() {
		return peso01;
	}


	public void setPeso01(Integer peso01) {
		this.peso01 = peso01;
	}


	public Integer getPeso02() {
		return peso02;
	}


	public void setPeso02(Integer peso02) {
		this.peso02 = peso02;
	}


	public Integer getPeso03() {
		return peso03;
	}


	public void setPeso03(Integer peso03) {
		this.peso03 = peso03;
	}


	public Integer getPeso04() {
		return peso04;
	}


	public void setPeso04(Integer peso04) {
		this.peso04 = peso04;
	}


	public Integer getPeso05() {
		return peso05;
	}


	public void setPeso05(Integer peso05) {
		this.peso05 = peso05;
	}


	public Integer getPeso06() {
		return peso06;
	}


	public void setPeso06(Integer peso06) {
		this.peso06 = peso06;
	}


	public Integer getPeso07() {
		return peso07;
	}


	public void setPeso07(Integer peso07) {
		this.peso07 = peso07;
	}


	public Integer getPeso08() {
		return peso08;
	}


	public void setPeso08(Integer peso08) {
		this.peso08 = peso08;
	}


	public Integer getPeso09() {
		return peso09;
	}


	public void setPeso09(Integer peso09) {
		this.peso09 = peso09;
	}


	public Integer getPeso10() {
		return peso10;
	}


	public void setPeso10(Integer peso10) {
		this.peso10 = peso10;
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
		Gabarito other = (Gabarito) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	

}
