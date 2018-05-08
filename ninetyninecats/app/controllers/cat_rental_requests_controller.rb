class CatRentalRequestsController < ApplicationController
  def index
    @all = CatRentalRequest.all
    render :index
  end

  def new
    @new = CatRentalRequest.new
    render :new
  end

  def edit
    @edit = CatRentalRequest.find(params[:id])
    render :edit
  end

  def show
    @crr = CatRentalRequest.find(params[:id])
    render :show
  end

  def update
  end

  def create
  end

end
