class SessionsController < ApplicationController
  def new

  end

  def create
    gik_user = GikUser.where(email: params[:session][:email].downcase).first
    if gik_user && gik_user.authenticate(params[:session][:password])
      create_session(gik_user)
      redirect_to gik_user
    else
      render 'new'
    end
  end

  def destroy
    destroy_session
    redirect_to root_path
  end
end
