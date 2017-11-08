Quando("selecionar a task {string} para exclusão") do |subject|
  ViewTasks.new.findElement(subject)
  TaskOverview.new.deletTask
  a = page.driver.browser.switch_to.alert
  a.accept
end


Entao("a task {string} é excluida") do |subject|
  expect(ViewTasks.new.mensage_delete.text).to eq('No results found for "'+subject+'"')
end