class GalleriesController < ApplicationController
  before_action :require_login

  def index
    @h1_title = 'ギャラリー'
    @user = User.find(params[:user_id])
    @category = @user.categories.find(params[:category_id])

    @gallery_new = "/users/#{params[:user_id]}/categories/#{params[:category_id]}/galleries/new"
    @back_link = "/users/#{params[:user_id]}/categories"
  end

  def new
    @h1_title = "ギャラリー追加"
    @user = User.find(params[:user_id])
    @category = @user.categories.find(params[:category_id])
    @gallery = @category.galleries.build

    @back_link = "/users/#{params[:user_id]}/categories/#{params[:category_id]}/galleries"
  end

  def edit
    @h1_title = 'ギャラリー編集'
    @user = User.find(params[:user_id])
    @category = @user.categories.find(params[:category_id])
    @gallery = @category.galleries.find(params[:id])

    @back_link = "/users/#{params[:user_id]}/categories/#{params[:category_id]}/galleries"
  end

  def create
    @user = User.find(params[:user_id])
    @category = @user.categories.find(params[:category_id])

    if @gallery = @category.galleries.create(gallery_params)
      redirect_to action: :index, notice: '更新しました'
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:user_id])
    @category = @user.categories.find(params[:category_id])
    @gallery = @category.galleries.find(params[:id])

    if @gallery.update(gallery_params)
      redirect_to action: :index, notice: '更新しました'
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @category = @user.categories.find(params[:category_id])
    @gallery = @category.galleries.find(params[:id])
    @gallery.destroy
    redirect_to action: :index
  end

  private
    def gallery_params
      params.require(:gallery).permit(:image, :title, :comment, :flag)
    end
end
