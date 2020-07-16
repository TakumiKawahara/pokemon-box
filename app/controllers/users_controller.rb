class UsersController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @posts = @user.posts.order("created_at DESC")
  end

end
