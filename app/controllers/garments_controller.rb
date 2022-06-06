class GarmentsController < ApplicationController

  def new
    @garment = Garment.new
    @categories = Category.all
    authorize @garment
  end

  def create
    @garment = Garment.new(garment_params)
    @garment.user_id = current_user.id
    authorize @garment
    if @garment.save!
      redirect_to garment_edit_shape_path(@garment)
    else
      render :new, status: :unprocessable_entity
    end
    authorize @garment
  end

  def update
    @garment = Garment.find(params[:id])
    @garment.update(garment_params)

    if @garment.update(garment_params)
      if garment_params.key?(:shape_id)
        redirect_to garment_edit_fabric_path(@garment)
      elsif garment_params.key?(:fabric_id)
        redirect_to garment_edit_detail_path(@garment)
      elsif garment_params.key?(:detail_id)
        redirect_to garment_url(@garment)
      end
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

  def edit_selected
    @garment = Garment.find(params[:id])
      if @garment.selected == true
        @garment.selected = false
      else
        @garment.selected = true
      end
    authorize @garment
    @garment.save
    redirect_to garments_path()
  end

  private

  def garment_params
    params.require(:garment).permit(:user_id, :category_id, :shape_id, :fabric_id, :detail_id, :selected)
  end
end
