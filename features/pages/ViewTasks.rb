# Não foi possível utilizar o Section
class SearchDialog < SitePrism::Section
	element :name_basic_field, 	"input[@id='name_basic']"
	element :search_button, 	"input[@id='search_form_submit']"
end


class ViewTasks <SitePrism::Page
	element :filter_link, :xpath, ".//tr[@id='pagination'][not(contains(@class, 'pagination-bottom'))]//td[contains(@class,'paginationActionButtons')]/ul[contains(@class,'searchLink')]//a"
	element :edit_link, :xpath, ".//tr[@class='oddListRowS1'][1]//a[@class='edit-link'][1]/img"
	element :close_button, :xpath, ".//tr[contains(@class,'oddListRowS1')][1]//img[@title='Close']"
	element :close_ok_button, :xpath, ".//*[@id='closeActivityDialog']//button[text()='OK']"
	element :mensage_delete, :xpath, ".//p[@class='msg'][contains(text(),' No results found for')]"
	
	section :search_modal, SearchDialog, 'div#searchDialog'

	def filtrateByName(subject)
		sleep 3
		filter_link.click
		#search_modal.name_basic_field.set(subject)
		#search_modal.search_button.click
		page.find(:xpath, ".//input[@id='name_basic']").set(subject)		
		page.find(:xpath, ".//input[@id='search_form_submit']").click
	end

	def toEdit
		edit_link.click
	end

	def findElement(parameter)
		page.find(:xpath, ".//a[contains(text(),'"+parameter+"')]").click
	end

end