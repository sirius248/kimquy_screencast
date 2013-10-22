class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def reminder(current_user)
    @greeting = "Giktuts xin chào bạn"
    @gik_user = current_user.password_reset_token
    @email = current_user.email
    @name = current_user.name

    mail to: current_user.email, subject: "Phục hồi mật khẩu qua mail"
  end
end
