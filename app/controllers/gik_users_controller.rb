class GikUsersController < ApplicationController
  include GikUsersHelper
  def new
    @gik_user = GikUser.new
  end

  def create
    @gik_user = GikUser.new(gik_user_params)

    if @gik_user.save
      # something to do
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @gik_user = GikUser.find(params[:id])
  end

  def signin
    return render 'signin' if params[:gik_user].blank?
    gik_user = GikUser.where(email: params[:gik_user][:email].downcase).first

    if gik_user && gik_user.authenticate(params[:gik_user][:password])
      create_session(gik_user)
      redirect_to root_path
    else
      render 'signin'
    end
  end


  def signout
    session_destroy
    redirect_to root_path
  end
  private
  def gik_user_params
    params.require(:gik_user).permit(:name, :email, :password, :password_confirmation)
  end
end
