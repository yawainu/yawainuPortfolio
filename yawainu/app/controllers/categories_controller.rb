class CategoriesController < ApplicationController
  before_action :require_login

  def index
    @h1_title = 'ギャラリー'
    @user = User.find(params[:user_id])
    @category_new = "/users/#{params[:user_id]}/categories/new"

    @back_link = "/users/#{params[:user_id]}/admin"
  end

  def new
    @h1_title = "カテゴリ追加"
    @user = User.find(params[:user_id])
    @category = @user.categories.build

    @back_link = "/users/#{params[:user_id]}/categories/"
  end

  def edit
    @h1_title = 'カテゴリ編集'
    @user = User.find(params[:user_id])
    @category = @user.categories.find(params[:id])

    @back_link = "/users/#{params[:user_id]}/categories/"
  end

  def create
    @user = User.find(params[:user_id])

    if @category = @user.categories.create(category_params)
      redirect_to action: :index, notice: '更新しました'
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:user_id])
    @category = @user.categories.find(params[:id])

    if @category.update(category_params)
      redirect_to action: :index, notice: '更新しました'
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @category = @user.categories.find(params[:id])
    @category.destroy
    redirect_to action: :index
  end


  private
    def category_params
      params.require(:category).permit(:title, :flag)
    end
end
