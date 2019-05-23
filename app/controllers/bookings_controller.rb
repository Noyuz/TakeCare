class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @contract = Contract.find(params[:contract_id])
    @booking = Booking.new
  end

  def create
    @contract = Contract.find(params[:contract_id])
    @booking = Booking.new(set_booking_params)
    @booking.contract = @contract
    @booking.user = current_user

    if @booking.save
      redirect_to bookings_path
    else
      render 'contracts/show'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(set_booking_params)
    redirect_to bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking_params
    params.require(:booking).permit(:title, :description, :user_id, :contract_id)
  end
end
