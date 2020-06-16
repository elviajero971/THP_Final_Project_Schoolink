class UserMailer < ApplicationMailer
  default from: 'whiteboard.thp@yopmail.com'
 
  def welcome_email(user)
    @user = user

    @url  = 'https://whiteboard-thp.herokuapp.com/'

    mail(to: @user.email, subject: 'Bienvenue chez WhiteBoard !')
  end
end
