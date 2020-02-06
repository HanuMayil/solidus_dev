class SpreeUsersController < ApplicationController
  def my_friends
    @friendships = current_spree_user.friends
  end

  def search
    @spree_users = SpreeUser.search(params[:search_param])
    render json: @spree_users
  end
end
