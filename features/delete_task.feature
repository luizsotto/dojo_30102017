#language: pt
#utf-8
@deletTask
Funcionalidade: Deletar Task
Eu como usuário
Quero realizar deletar uma task que fui criada no site SuiteCRM

	Contexto: Entrar no site SuiteCRM
		Dado que loguei no site SuiteCRM com usuario "will" e senha "will"
	
	Esquema do Cenario: Deletar uma task no site SuiteCRM
	Quando realizar uma pesquisa pelo nome da task  "<Subject>"
	E selecionar a task "<Subject>" para exclusão 
	Entao a task "<Subject>" é excluida

	Exemplos: 
	| Subject		|
	| Luiz Dojo 2	|	
	| Teste2		|