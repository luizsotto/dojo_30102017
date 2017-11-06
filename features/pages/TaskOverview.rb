class TaskOverview <SitePrism::Page

	element :title_aba_field	, :xpath, "//a[contains(text(),'TASK OVERVIEW')]"
	element :subject_field		, "input[id='name']"
	element :status_field		, "input[id='status']"
	element :start_date_field	, "input[id='date_start_date']"
	element :due_date_field		, "input[id='date_due_date']"
	element :priority_field		, "input[id='priority']"
	element :description_field	, "input[id='description']"
	element :created_button		, "input[id='bigbutton']"

end