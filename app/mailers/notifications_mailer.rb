class NotificationsMailer < ActionMailer::Base
  default from: "phamkhanh928@gmail.com"
  default to: "khanhpn@zigexn.vn"

  def new_message(message)
    @message sage
    mail(subject: )
  end
end
