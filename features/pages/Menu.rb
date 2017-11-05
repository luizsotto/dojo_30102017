class Menu <SitePrism::Page
 	element :created_field, 		:xpath, ".//*[@class='desktop-bar']//li[contains(@id,'quickcreatetop')]"
	element :task_created_field, 	:xpath, ".//*[@class='desktop-bar']//li[contains(@id,'quickcreatetop')]//a[contains(text(),'Create Task')]"

	def createTask
		created_field.click
		task_created_field.click
	end
end 