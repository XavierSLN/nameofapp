class UserMailer < ApplicationMailer
  default from: "xav.sln@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'xav.sln@gmail.com',
        :subject => "A new contact form message from #{name}")
  end


end
