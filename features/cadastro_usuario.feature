#language: pt
#utf-8
@cadastro
Funcionalidade: Cadastrar usuario
Eu como usuário
Quero realizar um cadastro no site Demoqa
Para ter acesso

	Contexto: Entrar no site DemoQA
		Dado Entrar no site DemoQA
	
	Esquema do Cenario: Cadastro de usuário no site Demoqa
	Quando eu fizer o registro "<username>","<email>"
	Entao eu terei acesso 

	Exemplos: 
	| username			| email			  							|
	| fusomuch			| josefanaovaitermesmo@123456.com			|
	| mtfbitch		 	| blablablanaovaitermesmo@123456.com 		|