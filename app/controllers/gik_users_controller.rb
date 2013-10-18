class GikUsersController < ApplicationController
  def new
    @gik_user = GikUser.new
  end

  def create
    @gik_user = GikUser.new(gik_user_params)

    if @gik_user.save
      # something to do
    else
      render 'new'
    end
  end

  def show
    @gik_user = GikUser.find(params[:id])
  end

  private
  def gik_user_params
    params.require(:gik_user).permit(:name, :email, :password, :password_confirmation)
  end
end
