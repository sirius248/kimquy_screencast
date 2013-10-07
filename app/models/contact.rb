class Contact < MailForm::Base
  attribute :name, validate: true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  attribute :title, validate: true
  attribute :content

  def headers
    {
      :subject => "My Contact Form",
      :to => "phamkhanh928@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
