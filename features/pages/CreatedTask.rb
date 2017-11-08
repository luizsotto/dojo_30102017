class CreatedTask <SitePrism::Page
	element :subject_field		, "input[id='name']"
	element :status_field		, "select[id='status']"
	element :start_date_field	, "input[id='date_start_date']"
	element :due_date_field		, "input[id='date_due_date']"
	element :priority_field		, "select[id='priority']"
	element :description_field	, "textarea[id='description']"
	element :created_button		, :xpath, ".//*[@id='EditView']/div[contains(@class,'buttons')]/input[@id='SAVE']"


	def fillOutForm (subject, status, startDate, dueDate, priority, description)
		if !(subject.empty?) 
			subject_field.set(subject)
		end
		if !(status.empty?)
			status_field.find(:xpath, ".//option[text()='"+status+"']").select_option
		end
		if !(startDate.empty?)
			start_date_field.set(startDate)
		end
		if !(dueDate.empty?)
			due_date_field.set(dueDate)
		end	
		if !(priority.empty?)
			priority_field.find(:xpath, ".//option[text()='"+priority+"']").select_option
		end
		if !(description.empty?)	
			description_field.set(description)
		end
		created_button.click
	end

end