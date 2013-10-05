class NotificationsMailer < ActionMailer::Base
  default from: "phamkhanh928@gmail.com"
  default to: "khanhpn@zigexn.vn"

  def new_message(message)
    @message =  message
    mail(subject: "[GitTuts] #{message.subject}")
  end
end
