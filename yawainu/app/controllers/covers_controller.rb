class CoversController < ApplicationController
  before_action :require_login

  def edit
    @h1_title = 'カバー設定'
    @cover = Cover.find_by(user_id: params[:id])

    @back_link = "/users/#{params[:id]}/admin"
  end

  def update
    @cover = Cover.find_by(user_id: params[:id])

    if @cover.update(cover_params)
      redirect_to user_admin_index_path(params[:id]), notice: '更新しました'
    else
      render :edit
    end
  end


  private
    def cover_params
      params.require(:cover).permit(:flag, :image)
    end
end
