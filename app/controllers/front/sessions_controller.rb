class Front::SessionsController < ApplicationController
  skip_before_action :logged_in_user, only: %i(new create)

  def new
  end

  def create
    @user = User.find_by(email: params[:email].downcase)
    if @user && @user.authenticate(params[:password])
      log_in(@user)
      params[:remember] == '1' ? remember(@user) : forget(@user)

      # 初回ログインかどうかでリダイレクトを切り替え
      if @user.first_flag
        @user.update(first_flag: false)
        redirect_to edit_user_path @user
      else
        redirect_back_or root_path
      end
    else
      # ログイン失敗
      flash.now[:danger] = 'メールアドレス、又はパスワードが間違っています'
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to login_path
  end
end
