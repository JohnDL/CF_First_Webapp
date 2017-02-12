class UserMailer < ActionMailer
  default from: "info@garmischgear.com"

  def contact_form(email, name, message)
  @message = message
  @name = name
    mail(:from => email,
        :to => 'jmann25@gmail.com',
        :subject => "A new contact form message from #{name}")
  end
  
  def welcome_user(user)
  @user = user
   mail(:from => 'info@garmsichgear',
    	:to => user.email, 
    	:subject => "Sign Up Confirmation")
    
  end
end


