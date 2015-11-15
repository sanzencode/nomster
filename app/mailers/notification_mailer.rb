class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com.com"

  def comment_added
  	@place = comment.place
  	@place.owner = @place.user
  	mail(to: @place_owner.email, 
  		subject: "A comment has been added to your place")
  end
end
