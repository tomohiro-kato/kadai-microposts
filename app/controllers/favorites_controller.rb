class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    # micropost = User.find(params[:micropost_id])
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = 'お気に入りに登録しました。'
    # redirect_to micropost
    redirect_back(fallback_location: root_path)
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = 'お気に入りの登録を解除しました。'
    # redirect_to micropost
    redirect_back(fallback_location: root_path)
  end
end
