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

## Resolução em SQL puro
![Clique no link abaixo](https://img.shields.io/badge/Repl.it-Run-yellowgreen)

[Rodar no repl.it SQLite](https://repl.it/@tarcnux/DesafioEscolaAlf)
Para mostrar meu interesse em participar, me dediquei a resolver este problema em SQL puro no Banco de Dados SQLite do Repl.it, o que permite executar o código on-line e ver os resultados.

Para este desafio considerei uma tabela de **alunos**, com apenas id e nome; uma tabela de **gabaritos** com as respostas e os pesos das questões; e uma tabela associativa de **provas**, representando uma associação de muitos para muitos com atributos extras, sendo que cada prova está relacionada com um aluno e com um gabarito, e possui as respostas dos alunos.

Ao rodar o código no Repl.it é possível na aba **Output** ver os resultados e na aba **Code** ver o código.
O código também está disponível neste repositoŕio Github, arquivo [main.sql](https://github.com/tarcnux/escola_Alf/blob/main/main.sql)


### Modelo DER utilizado
![Diagrama Entidade Relacionamento](https://github.com/tarcnux/escola_Alf/blob/main/DER_DiagramaEntidadeRelacionamento.png)
