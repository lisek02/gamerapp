class UsersController < ApplicationController
	before_action :logged_in_user, only: [:index]
	before_action :admin_user, only: []
	before_action :correct_user, only: [:show]

  def show
    @user = User.find(params[:id])
  end

  def index
  	@users = User.all
  end

  private
  	def admin_user
  		redirect_to(root_url) unless (current_user && current_user.admin?)
  	end

  	def correct_user
  		@user = User.find(params[:id])
  		redirect_to(root_url) unless @user == current_user
  	end

  	def logged_in_user
  		redirect_to(new_user_session_path) unless current_user
  	end
end
