class UserMailer < ApplicationMailer

	default from: "jmann25@gmail.com"

  def contact_form(email, name, message)
  @message = message
  @name = name
    mail(:from => 'jmann25@gmail.com',
        :to => 'jmann25@gmail.com',
        :subject => "A new contact form message from #{name}")
  end
  
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Sign Up Confirmation')
  end
end