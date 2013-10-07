class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])

    if @contact.deliver
      render :thank_you
    else
      render :new
    end
  end
end
