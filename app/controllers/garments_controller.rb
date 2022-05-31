class GarmentController < ApplicationController
  def new
    @garment = Garment.new
    authorize @garment
  end

  def create
    @garment = Garment.new(garment_params)
    @garment.user = current_user
    if @garment.save!
      redirect_to garment_path(@garment)
    else
      render :new, status: :unprocessable_entity
    end
    authorize @garment
  end

  def update
    @garment = Garment.find(params[:id])
    @garment.update(garment_params)
    if @garment.update(garment)
      redirect_to garment_path(@garment)
    else
      render :new, status: :unprocessable_entity
    end
    authorize @garment
  end

  def show
    @garment = Garment.find(params[:id])
    authorize @garment
  end

  def index
    @garments = policy_scope(Garment)
  end

  def destroy
    @garment = Garment.find(params[:id])
    @garment.destroy!
    redirect_to garments_path, status: :see_other
    authorize @garment
  end

  def edit_shape
    @garment = Garment.find(params[:id])
    authorize @garment
  end

  def edit_fabric
    @garment = Garment.find(params[:id])
    authorize @garment
  end

  def edit_detail
    @garment = Garment.find(params[:id])
    authorize @garment
  end

  private

  def garment_params
    params.require(:garment).permit(:category, :shape, :fabric, :detail, :selected)
  end
end
