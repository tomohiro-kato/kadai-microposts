class RelationshipsController < ApplicationController
  before_action :require_user_logged_in

  def create
    micropost = User.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = 'お気に入りに登録しました。'
    redirect_to user
  end

  def destroy
    micropost = User.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = 'お気に入りの登録を解除しました。'
    redirect_to user
  end
end
