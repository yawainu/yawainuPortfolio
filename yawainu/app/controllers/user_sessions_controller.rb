class UserSessionsController < ApplicationController
  def new
    @h1_title = 'ログイン'
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to(controller: 'admin', action: 'index', notice: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(controller: 'user_sessions', action: 'new', notice: 'Logged out!')
  end
end
