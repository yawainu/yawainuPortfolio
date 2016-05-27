class DisplaysController < ApplicationController
  before_action :require_login

  def edit
    @h1_title = '表示設定'
    @display = Display.find_by(user_id: params[:id])

    @back_link = "/users/#{params[:id]}/admin"
  end

  def update
    @display = Display.find_by(user_id: params[:id])

    if @display.update(display_params)
      redirect_to user_admin_index_path(params[:id]), notice: '更新しました'
    else
      render :edit
    end
  end


  private
    def display_params
      params.require(:display).permit(:cover, :gallery, :work, :contact)
    end
end
