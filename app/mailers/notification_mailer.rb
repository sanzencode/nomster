class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com.com"

  def comment_added
  	mail(to: "design@sandraharrasser.com", 
  		subject: "A comment has been added to your place")
  end
end
