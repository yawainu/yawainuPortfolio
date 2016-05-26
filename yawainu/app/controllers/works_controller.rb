class WorksController < ApplicationController
  before_action :require_login

  def index
    @h1_title = "仕事履歴"
    @user = User.find(params[:user_id])
    @work_new = "/users/"+ params[:user_id] +"/works/new"
  end

  def new
    @h1_title = "仕事履歴追加"
    @user = User.find(params[:user_id])
  end

  def edit
  end

  def create
    @user = User.find(params[:user_id])

    if @work = @user.works.create(work_params)
      redirect_to user_works_path(params[:user_id]), notice: '更新しました'
    else
      render :new
    end
  end

  #def show
  #end

  def update
  end

  def destroy
    @user = User.find(params[:user_id])
    @work = @user.works.find(params[:id])
    @work.destroy
    redirect_to user_works_path(params[:user_id])
  end

  private
    def work_params
      params.require(:work).permit(:start_date, :end_date, :comment, :flag)
    end
end
