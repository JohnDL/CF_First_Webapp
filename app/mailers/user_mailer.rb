class UserMailer < ApplicationMailer

	default from: "mann.john43@yahoo.com"

  def contact_form(email, name, message)
  @message = message
  @name = name
    mail(:from => email,
        :to => 'mann.john43@yahoo.com',
        :subject => "A new contact form message from #{name}")
  end
end
