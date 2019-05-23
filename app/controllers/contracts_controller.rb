class ContractsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_contract, only: %i[show edit update destroy]

  def new

  end

  def show
    @contract = Contract.find(params[:id])
    @booking = Booking.new
  end

  def index
    @contracts = Contract.all
  end

  private

  def contract_params
    params.require(:contract).permit(:nickname, :description, :price, :rank)
  end

  def set_contract
    @contract = Contract.find(params[:id])
  end
end
