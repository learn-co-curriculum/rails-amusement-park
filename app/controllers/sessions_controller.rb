class SessionsController < ApplicationController
include UsersHelper

  def new
    @users = User.all
  end

  def create
    @user = User.find(params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      login(@user)
      redirect_to user_path(@user)
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end
