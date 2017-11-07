class SearchDialog < SitePrism::Section
	element :name_basic_field, 	"input[id='name_basic']"
	element :search_button, 	"input[id='search_form_submit']"
end


class ViewTasks <SitePrism::Page
	element :filter_link, :xpath, ".//tr[@id='pagination'][not(contains(@class, 'pagination-bottom'))]//td[contains(@class,'paginationActionButtons')]/ul[contains(@class,'searchLink')]//a"
	
	
	section :search_modal, SearchDialog, 'div#searchDialog'

	def filtrateByName(subject)
		filter_link.click
#		binding.pry
		search_modal.name_basic_field.set(subject)
		search_modal.search_button.click 
	end

end