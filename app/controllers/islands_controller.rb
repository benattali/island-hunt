class IslandsController < ApplicationController
  before_action :set_island, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @islands = policy_scope(Island)
  end

  def show
    @booking = Booking.new

    @markers = [{
      lat: @island.latitude,
      lng: @island.longitude,
      image_url: helpers.asset_url('skull3.png')

    }]
  end

  def new
    @island = Island.new
    authorize @island
  end

  def create
    @island = Island.new(islands_params)
    @island.user = current_user
    authorize @island
    if @island.save!
      redirect_to island_path(@island), notice: "#{@island.name} was successfully created."
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @island.update(islands_params)
      redirect_to island_path(@island), notice: "#{@island.name} was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    redirect_to islands_url, notice: "#{@island.name} was successfully destroyed."
    @island.destroy
  end

  private

  def islands_params
    params.require(:island).permit(:name, :location, :activities, :size, :price, :difficulty, :photo)
  end

  def set_island
    @island = Island.find(params[:id])
    authorize @island
  end
end
