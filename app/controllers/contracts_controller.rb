class ContractsController < ApplicationController

  def show
    @contract = Contract.find(params[:id])
  skip_before_action :authenticate_user!, only: :index
    
  def index
    @contracts = Contract.all
  end

  private

  def contract_params
    params.require(:contract).permit(:nickname, :description, :price, :rank)

  end
end
