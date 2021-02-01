# escola_Alf
Programa #Código&lt;para>todXs JAVA

## O Desafio
	
A escola Alf aplica provas de múltipla escolha para os alunos. A nota do aluno na prova é determinada pela média ponderada das questões com os pesos de cada questão. Cada questão correta soma 1 ponto multiplicada pelo peso e cada questão errada 0. A nota final é a média aritmética das notas de todas as provas.

## Requisitos obrigatórios:
	
  ### Crie uma API HTTP que permita à escola: 

	- Cadastrar o gabarito de cada prova;
	- Cadastrar as respostas de cada aluno para cada prova;
	- Verificar a nota final de cada aluno;
	- Listar os alunos aprovados;

  ### Restrições
	- A nota total da prova é sempre maior que 0 e menor que 10.
	- A quantidade máxima de alunos é 100.
	- O peso de cada questão é sempre um inteiro maior que 0.
	- Os alunos aprovados tem média de notas maior do que 7.
	- A entrada e saída de dados deverá ser em JSON.
	
## Requisitos desejáveis:
	- API RESTful

## Critérios de avaliação:
	
	Entrega dos requisitos obrigatórios: 6 pontos
	Documentação: 1 ponto
	Testes unitários: 1 ponto
	Separação de camadas: 1 ponto
	API RESTFul: 1 ponto

# Resolução em SQL puro
![Clique no link abaixo](https://img.shields.io/badge/Repl.it-Run-yellowgreen)

## Critérios atendidos
  ### Restrições
- [x] A nota total da prova é sempre maior que 0 e menor que 10.
- [x] A quantidade máxima de alunos é 100.
- [x] O peso de cada questão é sempre um inteiro maior que 0.
- [x] Os alunos aprovados tem média de notas maior do que 7.
- [ ] A entrada e saída de dados deverá ser em JSON.
	
 ### Requisitos desejáveis:
- [ ] API RESTful

 ### Critérios de avaliação:
	
- [ ] Entrega dos requisitos obrigatórios: 6 pontos
- [x] Documentação: 1 ponto
- [ ] Testes unitários: 1 ponto
- [ ] Separação de camadas: 1 ponto
- [ ] API RESTFul: 1 ponto

[Rodar no repl.it SQLite](https://repl.it/@tarcnux/DesafioEscolaAlf)
Para mostrar **meu interesse em participar**, me dediquei a resolver este problema em SQL puro no Banco de Dados SQLite do Repl.it, o que permite executar o código on-line e ver os resultados.

Para este desafio considerei uma tabela de **alunos**, com apenas id e nome; uma tabela de **gabaritos** com as respostas e os pesos das questões; e uma tabela associativa de **provas**, representando uma associação de muitos para muitos com atributos extras, sendo que cada prova está relacionada com um aluno e com um gabarito, e possui as respostas dos alunos.

Ao rodar o código no Repl.it é possível na aba **Output** ver os resultados e na aba **Code** ver o código.
O código também está disponível neste repositoŕio Github, arquivo [main.sql](https://github.com/tarcnux/escola_Alf/blob/main/main.sql)


### Modelo DER utilizado
![Diagrama Entidade Relacionamento](https://github.com/tarcnux/escola_Alf/blob/main/DER_DiagramaEntidadeRelacionamento.png)

# Java API RESTful

CRUD completo de web services REST para acessar os recursos alunos, provas e gabaritos. 

 * Busca paginada de recursos
 * Busca de recurso por id
 * Inserir novo recurso
 * Atualizar recurso
 * Deletar recurso

## Modelo em camadas utilizado
![Padrão DTO - Data Transfer Object](https://github.com/tarcnux/escola_Alf/blob/main/ModeloEmCamadasDTO.png)

O CRUD usa um ambiente de testes (manual) configurado acessando o **banco de dados H2**, usa **Maven** como gerenciador de dependência, e **Java 11** como linguagem.
    
##  :dizzy: Como Executar

- ### **Pré-requisitos**

  - É **necessário** possuir o **[Java 11](https://www.java.com/)** e **[Spring Boot](https://spring.io/)** instalados no computador.
  - É **necessário** possuir o **[Git](https://git-scm.com/)** instalado e configurado no computador.
  - É **recomendável** utilizar **[IDE Eclipse com Spring Tools Suite 4](https://spring.io/tools)** .
 

1. Faça um clone do repositório:

```sh
  #  Crie um novo Workspace, uma pasta chamada: ws-github-teste
  $ md ws-github-workspace
  $ cd ws-github-workspace
  $ git clone https://github.com/tarcnux/escola_Alf.git
```

2. Executando a Aplicação:

```
  #  Abra o Spring Tool Suite (STS)
  #  Selecione o Workspace: ws-github-workspace
  #  Import projects - Maven - Existing Maven Projects
  #  Root Directory: escola_Alf
  #  Clicar com o botão direito em src/main/java
  #  Procurar por "Run As" e ir na opção "5 Spring Boot App"

```
[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/b6a6e870b4f620553432)

### Busca paginada GET

#### Busca paginada de alunos, página 0, 2 linhas por página, ascendente, ordenado pelo id
    GET /alunos?page=0&linesPerPage=2&direction=ASC&orderBy=id

#### Busca paginada de gabaritos, página 0, 2 linhas por página, ascendente, ordenado pelo id
    GET /gabaritos?page=0&linesPerPage=2&direction=ASC&orderBy=id

#### Busca paginada de provas, página 0, 2 linhas por página, ascendente, ordenado pelo id
    GET /provas?page=0&linesPerPage=2&direction=ASC&orderBy=id

### Busca por id GET

#### Busca de aluno por id
    GET /alunos/1

#### Busca de gabarito por id
    GET /gabaritos/1

#### Busca de prova por id
    GET /provas/1

### Inserção POST

#### Inserção de novo aluno

    POST /alunos
    {
	    "nome": "Maria Silva",
    }

#### Inserção de novo gabarito

    POST /gabaritos
    {
	   "nome": "Novo Gabarito",
	    "resposta01": "A",
	    "resposta02": "A",
	    "resposta03": "A",
	    "resposta04": "A",
	    "resposta05": "A",
	    "resposta06": "B",
	    "resposta07": "B",
	    "resposta08": "B",
	    "resposta09": "B",
	    "resposta10": "B",
	    "peso01": 20,
	    "peso02": 10,
	    "peso03": 10,
	    "peso04": 40,
	    "peso05": 20,
	    "peso06": 30,
	    "peso07": 20,
	    "peso08": 70,
	    "peso09": 20,
	    "peso10": 20
     }

#### Inserção de nova prova

    POST /provas
    {
	    "idAluno": 10,
	    "idGabarito": 5,
	    "resposta01": "E",
	    "resposta02": "B",
	    "resposta03": "E",
	    "resposta04": "D",
	    "resposta05": "E",
	    "resposta06": "E",
	    "resposta07": "E",
	    "resposta08": "D",
	    "resposta09": "E",
	    "resposta10": "E"
    }

### Atualização PUT

#### Atualização de um aluno

    PUT /alunos/1
    {
	    "nome": "Maria Silvaaa",	    
    }

#### Atualização de um gabarito

    PUT /gabaritos/1
    {
	   "nome": "Gabarito atualizado",
	    "resposta01": "C",
	    "resposta02": "C",
	    "resposta03": "C",
	    "resposta04": "C",
	    "resposta05": "C",
	    "resposta06": "D",
	    "resposta07": "D",
	    "resposta08": "D",
	    "resposta09": "D",
	    "resposta10": "D",
	    "peso01": 20,
	    "peso02": 10,
	    "peso03": 10,
	    "peso04": 40,
	    "peso05": 20,
	    "peso06": 30,
	    "peso07": 20,
	    "peso08": 70,
	    "peso09": 20,
	    "peso10": 20
     }

#### Atualização de uma prova

    PUT /provas/1
    {
	    "idAluno": 10,
	    "idGabarito": 5,
	    "resposta01": "A",
	    "resposta02": "A",
	    "resposta03": "A",
	    "resposta04": "A",
	    "resposta05": "A",
	    "resposta06": "E",
	    "resposta07": "E",
	    "resposta08": "D",
	    "resposta09": "E",
	    "resposta10": "E"
    }
    
### Exclusão DELETE

#### Exclusão de um aluno

    DELETE /alunos/1

#### Exclusão de um gabarito

    DELETE /gabaritos/1

#### Exclusão de uma prova

    DELETE /provas/1

## Critérios atendidos
  ### Restrições
- [ ] A nota total da prova é sempre maior que 0 e menor que 10.
- [ ] A quantidade máxima de alunos é 100.
- [ ] O peso de cada questão é sempre um inteiro maior que 0.
- [ ] Os alunos aprovados tem média de notas maior do que 7.
- [x] A entrada e saída de dados deverá ser em JSON.
	
 ### Requisitos desejáveis:
- [x] API RESTful

 ### Critérios de avaliação:
	
- [ ] Entrega dos requisitos obrigatórios: 6 pontos
- [x] Documentação: 1 ponto
- [ ] Testes unitários: 1 ponto
- [x] Separação de camadas: 1 ponto
- [x] API RESTFul: 1 ponto

## Lista de Afazeres
- [ ] [Aprender como fazer o mapeamento de associação Muitos para Muitos com colunas extras utilizando JPA e  Hibernate](https://vladmihalcea.com/the-best-way-to-map-a-many-to-many-association-with-extra-columns-when-using-jpa-and-hibernate/)
- [ ] Fazer a lógica na camada de **serviço**
- [ ] Liberar apenas os dados necessários através do DTO
- [ ] Implementar segurança para que nem todo mundo tenha acesso à manipulação e visualização de alguns endpoints.
- [ ] Testes unitários
- [ ] Teste de API REST
- [ ] Hospedar
- [ ] Desenvolver um Front-end

## :memo: Licença
Esse projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

