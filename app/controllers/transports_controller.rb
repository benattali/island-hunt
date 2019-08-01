class TransportsController < ApplicationController
  before_action :set_booking, only: [:new, :create]
  before_action :set_island, only: [:new, :create]

  def index
    @transports = policy_scope(Transport)
  end

  def new
    @transport = Transport.new
    authorize @transport
    index
  end

  def create
    if params[:t_id].nil?
      @booking.save
    else
      @booking.transport = Transport.find(params[:t_id])
      @booking.save
    end
    redirect_to @booking
  end

  def show
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def set_island
    @island = Island.find(params[:island_id])
    authorize @island
  end
end
