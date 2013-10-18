class GikUser < ActiveRecord::Base
  before_save {self.email = email.downcase}

  validates :name, presence: {message: I18n::t("error.gik_user.presence_name")}, length: {maximum: 80, message: I18n::t("error.gik_user.length_name")}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: {message: I18n::t("error.gik_user.presence_email")}, format: {with: VALID_EMAIL_REGEX, message: I18n.t("error.gik_user.format_email")
}, uniqueness: {case_sensitive: false, message: I18n::t("error.gik_user.uniqueness_email")}

  has_secure_password
  validates :password, presence: {message: I18n::t("error.gik_user.presence_password")}, length: {minimum: 6, message: I18n::t("error.gik_user.length_password")}
  validates :password_confirmation, presence: {message: I18n::t("error.gik_user.presence_password_confirmation")}, length: {minimum: 6, message: I18n::t("error.gik_user.length_password_confirmation")}
end
