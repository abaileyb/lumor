class UserMailer < ApplicationMailer
	def fixit_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: "bailey@baileyberro.com", subject: "New Fixit Request! from #{@user.first_name} #{@user.last_name}")
  end
end
