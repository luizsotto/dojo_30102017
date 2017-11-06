#language: pt
#utf-8
@createTask
Funcionalidade: Cadastrar Task
Eu como usuário
Quero realizar um cadastro de uma nova task no site SuiteCRM

	Contexto: Entrar no site SuiteCRM
		Dado que loguei no site SuiteCRM com usuario "will" e senha "will"
	
	Esquema do Cenario: Cadastro de uma nova task no site SuiteCRM
	Quando realizar o cadastro da nova task com os dados "<Subject>", "<Status>", "<Start Date>", "<Due Date>", "<Priority>", "<Description>"
	Entao a tela TaskOverview será mostrada 

	Exemplos: 
	| Subject	| Status		| Start Date	| Due Date		| Priority	| Description	|
	| Teste1	| Not Started	| 05/11/2017 	| 05/11/2017	| Low		| Teste1		|
#	| Teste2	| Not Started	| 05/11/2017 	| 05/11/2017	| Low		| Teste2		|