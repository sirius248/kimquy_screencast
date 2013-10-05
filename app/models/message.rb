class Message < ActiveRecord::Base
  attr_accessor :email, :subject, :content

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :email, :subject, :content, :presence => true
end
