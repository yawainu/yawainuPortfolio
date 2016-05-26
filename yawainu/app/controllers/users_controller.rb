class UsersController < ApplicationController
  before_action :require_login, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @h1_title = 'ユーザ新規登録'
    @user = User.new
  end

  def edit
    @h1_title = 'ユーザ情報編集'
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      # category,gallery,workは追加できるので作らない
      @user.create_cover()
      @user.create_display()

      # ログイン画面スキップしたい、どうすればいいのか
      redirect_to user_admin_index_path(@user), notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to user_admin_index_path(@user), notice: '更新しました'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :title, :comment, :password, :password_confirmation)
    end
end
