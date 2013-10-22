class RemindersController < ApplicationController
  def reminder_done
    return render 'reminder_done' if request.params["current_user"].blank?
    request_email = request.params['current_user']['email']

    valid_email = GikUser.where(email: request_email).first

    if valid_email.blank?
      redirect_to reminder_path, notice: "Email của bạn không đúng, vui lòng nhập lại hoặc đăng ký tài khoản mới."
    else
      valid_email.send_token
      redirect_to root_path
    end
  end

  def compare
    return render reminder_path if params.blank?
    email = params[:email]
    token = params[:token]
    time_now = Time.zone.now
    user_reset_pass = GikUser.where(email: email).first

    unless user_reset_pass.blank?
      if user_reset_pass.created_at > 24.hours.ago && user_reset_pass.reset_password_token == token
        redirect_to root_path
      else
        user_reset_pass.update_column(:reset_password_token, '')
        redirect_to reminder_url, notice: "Mật khẩu đã quá hạn 24 giờ, vui lòng phục hồi lại"
      end
    else
      redirect_to reminder_url
    end
  end
end
