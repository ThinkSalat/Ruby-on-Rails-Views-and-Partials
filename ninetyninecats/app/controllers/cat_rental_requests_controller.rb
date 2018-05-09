class CatRentalRequestsController < ApplicationController
  def index
    @all = CatRentalRequest.all
    render :index
  end

  def new
    @crr = CatRentalRequest.new
    render :new
  end

  def edit
    @crr = CatRentalRequest.find(params[:id])
    render :edit
  end

  def show
    @crr = CatRentalRequest.find(params[:id])
    render :show
  end

  def update
    @crr = CatRentalRequest.find(params[:id])
    if @crr.update(crr_params)
      redirect_to cat_rental_request_url(@crr)
    else
      render :edit
    end
  end

  def create
    @crr = CatRentalRequest.new(crr_params)
    if @crr.save
      redirect_to cat_url(@crr.cat_id)
    else
      render json: @crr.errors.full_messages
    end
  end

  private
  def crr_params
    params.require(:cat_rental).permit(:cat_id,:start_date,:end_date)
  end
end
