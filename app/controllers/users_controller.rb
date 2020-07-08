class UsersController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @posts = @user.post.order("created_at DESC")
  end

end
