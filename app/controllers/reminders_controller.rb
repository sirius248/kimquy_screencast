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
    return render 'compare' if params[:gik_user].blank?

    token = params[:gik_user][:password_reset_token]
    email_of_user = GikUser.where(password_reset_token: token).first

    return render 'compare' if email_of_user.blank?

    password_reset = params[:gik_user][:password]
    password_confirmation_reset = params[:gik_user][:password_confirmation]

    if email_of_user.created_at > 24.hours.ago
      email_of_user.update_attributes(password: password_reset, password_confirmation: password_confirmation_reset) if password_reset == password_confirmation_reset
      email_of_user.update_column(:password_reset_token, '')
      redirect_to signin_path
    else
      email_of_user.update_column(:password_reset_token, '')
      redirect_to reminder_url, notice: "Mật khẩu đã quá hạn 24 giờ, vui lòng phục hồi lại"
    end

  end
end
