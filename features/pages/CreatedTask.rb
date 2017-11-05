class CreatedTask <SitePrism::Page
	element :subject_field		, "input[id='name']"
	element :status_field		, "select[id='status']"
	element :start_date_field	, "input[id='date_start_date']"
	element :due_date_field		, "input[id='date_due_date']"
	element :priority_field		, "select[id='priority']"
	element :description_field	, "textarea[id='description']"
	element :created_button		, "input[id='bigbutton']"


	def fillOutForm (subject, status, startDate, dueDate, priority, description)
		subject_field.set(subject)
		status_field.find(:xpath, ".//option[text()='"+status+"']").select_option
		start_date_field.set(startDate)
		due_date_field.set(dueDate)
		priority_field.find(:xpath, ".//option[text()='"+priority+"']").select_option
		description_field.set(description)
		created_button.click
	end

end