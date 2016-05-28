class TopController < ApplicationController
  before_action :require_login

  def index
    @user = User.find(params[:user_id])

    @cover = Cover.find_by(user_id: params[:user_id])
    @display = Display.find_by(user_id: params[:user_id])

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
