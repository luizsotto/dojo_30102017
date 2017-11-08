class TaskOverview <SitePrism::Page

	element :title_aba_field	, :xpath, ".//a[contains(text(),'TASK OVERVIEW')]"
	element :subject_field		, "input[id='name']"
	element :status_field		, "div[field='status']"
	element :start_date_field	, "input[id='date_start_date']"
	element :due_date_field		, "input[id='date_due_date']"
	element :priority_field		, "div[field='priority']"
	element :description_field	, "input[id='description']"
	element :created_button		, "input[id='bigbutton']"
	element :action_button		, :xpath, ".//li[@id='tab-actions']/a[text()='ACTIONS']"
	element :delete_button		, "input[id='delete_button']"

	def deletTask
		action_button.click
		delete_button.click
	end

end