class BookingsController < ApplicationController
  before_action :find_island, only: [:new, :create]
  # before_action :authorize_booking
  def index
    @bookings = policy_scope(Booking).where(user: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.island = @island
    authorize @booking
    if @booking.save
      redirect_to new_island_transport_path(@island, @booking)
    else
      render :new
    end
  end

  # def update
  #   if @booking.update(bookings_params)
  #     redirect_to booking_path(@booking), notice: "#{@booking.name} was successfully updated."
  #   else
  #     render :edit
  #   end
  # end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    redirect_to bookings_path, notice: "Booking for #{@booking.island.name} was successfully destroyed."
    @booking.destroy
  end

  private

  def find_island
    @island = Island.find(params[:island_id])
    # authorize @island
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
