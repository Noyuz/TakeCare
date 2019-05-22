class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
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
      redirect_to contract_bookings_path(@contract)
    else
      render 'contracts/show'
    end
  end

  private

  def set_booking_params
    params.require(:booking).permit(:title, :description, :user_id, :contract_id)
  end
end
