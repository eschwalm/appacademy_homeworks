class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'

  def welcome_email(user)
    @user = user
    @url = 'example.com/session/new'
    mail(to: user.username, subject: 'Welcome to 99 Cats!')
  end
end
