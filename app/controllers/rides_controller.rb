class RidesController < ApplicationController
  def new
  end

  def create
    @user = User.find(session[:user_id])
    @attraction = Attraction.find(params[:attraction][:id])
    @ride = Ride.new
    @ride.attraction = @attraction
    @ride.user = @user
    @ride.save
    redirect_to user_path(@user)
  end
end
