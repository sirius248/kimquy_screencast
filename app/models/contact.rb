class Contact
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations
  include ActionView::Helpers::TextHelper

  attr_accessor :name, :email, :message

  validates_presence_of :name, message: I18n.t("error.contact.name")
  validates :email, :format => { :with => /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/ , message: I18n.t("error.contact.email")
}
  validates :message, :length => { :minimum => 10, :maximum => 1000, message: I18n.t("error.contact.message") }

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def deliver
    return false unless valid?
    Pony.mail({
    :from => %("#{name}" <#{email}>),
    :reply_to => email,
    :subject => "Website gikTuts",
    :body => message,
    :html_body => simple_format(message)
    })
  end

  def persisted?
    false
  end

end
