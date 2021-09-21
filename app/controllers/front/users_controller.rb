class Front::UsersController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to root_path
    else
      flash.now[:danger] = '入力内容に誤りがあります'
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :phone_number, :description)
  end
end
