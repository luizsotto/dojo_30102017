Dado("Entrar no site DemoQA") do
 DemoQA.new.load
end

Quando("eu fizer o registro {string},{string}") do |username, email|
   DemoQA.new.cadastrar_user("Jose", "Aparecido", "5511986786666", username, email, "admin1234", "admin1234")
end


Entao("eu terei acesso") do
  expect(DemoQA.new.mensagem_sucesso.text).to eq("Thank you for your registration")
end