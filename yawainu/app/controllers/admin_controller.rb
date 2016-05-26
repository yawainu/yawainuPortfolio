class AdminController < ApplicationController
  before_action :require_login

  def index
    @h1_title = '管理ページ'
    @user = User.find(params[:user_id])
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
