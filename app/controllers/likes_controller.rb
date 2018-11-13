class LikesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.like(micropost)
    flash[:success] = 'micropostをお気に入りに追加しました。'
    redirect_to likes_user_url(current_user)
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unlike(micropost)
    flash[:success] = 'micropostをお気に入りから削除しました。'
    redirect_to root_url
  end
end
