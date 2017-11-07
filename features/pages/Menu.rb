class Menu <SitePrism::Page
	element :activities_field, 		:xpath, ".//a[text()='Activities']"
	element :task_field,			:xpath, ".//a[text()='Activities']/ancestor::span//a[contains(text(),'Tasks')]"

 	element :created_field, 		:xpath, ".//*[@class='desktop-bar']//li[contains(@id,'quickcreatetop')]"
	element :task_created_field, 	:xpath, ".//*[@class='desktop-bar']//li[contains(@id,'quickcreatetop')]//a[contains(text(),'Create Task')]"

	def createTask
		created_field.click
		task_created_field.click
	end

	def goToTask
		activities_field.click
		task_field.click
	end
end 