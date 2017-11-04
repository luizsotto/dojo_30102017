class DemoQA < SitePrism::Page
	set_url "http://demoqa.com/"

	element :register_link, '#menu-item-374'
	element :first_name_field, "input[name='first_name']"
	element :last_name_field, "input[name='last_name']" 
	element :hobby_checkbox, :xpath, "//*[@id=\"pie_register\"]/li[3]/div/div[1]/input[1]"
	element :phone_field, "input[name='phone_9']"
	element :username_field, "input[name='username']"
	element :email_field, "input[name='e_mail']"
	element :password_field, "input[name='password']"
	element :password2_field, "input[id='confirm_password_password_2']"
	element :submit_btn, :xpath, "//*[@id=\"pie_register\"]/li[14]/div/input"
	element :mensagem_sucesso,  "p[class='piereg_message']"

	def cadastrar_user(first_name, last_name, phone, username, email, password, password_2)
  		register_link.click
	  	first_name_field.set(first_name)
	  	last_name_field.set(last_name)
		hobby_checkbox.click
		phone_field.set(phone)
		username_field.set(username)
		email_field.set(email)
		password_field.set(password)
		password2_field.set(password_2)
		submit_btn.click
	end
end

