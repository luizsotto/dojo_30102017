class LoginPage <SitePrism::Page

	set_url "https://demo.suiteondemand.com/"

	element :userName_field	, "input[id='user_name']"
	element :password_field	, "input[id='user_password']"
	element :login_button	, "input[id='bigbutton']"

	def log_in(userName, password)
		userName_field.set(userName)
		password_field.set(password)
		login_button.click
	end 

end