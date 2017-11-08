#language: pt
#utf-8
@editTask
Funcionalidade: Editar Task
Eu como usuário
Quero realizar uma edição numa task que fui criada no site SuiteCRM

	Contexto: Entrar no site SuiteCRM
		Dado que loguei no site SuiteCRM com usuario "will" e senha "will"
	
	Esquema do Cenario: Editar uma task no site SuiteCRM
	Quando realizar uma pesquisa pelo nome da task  "<Subject>"
	E realizar uma alteração no Status da task para "<Status>"
	Entao sera exibido a pagina que contem os dados da task com o novo Status

	Exemplos: 
	| Subject		| Status		|
	| Luiz Dojo 2	| Pending Input	|	
	| Teste2		| Pending Input	|