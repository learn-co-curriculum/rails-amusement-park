class AttractionsController < ApplicationController
  def index
    @attractions = Attraction.all
    @user = User.find(session[:user_id])
  end

  def create
    @attraction = Attraction.create(attraction_params)
    redirect_to attraction_path(@attraction)
  end

  def new
    @attraction = Attraction.new
  end

  def show
    @user = User.find(session[:user_id])
    @attraction = Attraction.find(params[:id])
  end

  def edit
    @attraction = Attraction.find(params[:id])
  end

  def update
    @attraction = Attraction.find(params[:id])
    @attraction.update_attributes(attraction_params)
    redirect_to attraction_path(@attraction)
  end

  def delete

  end

  private

  def attraction_params
    params.require(:attraction).permit(:id, :name, :min_height, :happiness_rating, :nausea_rating, :tickets)
  end
end
