class DosesController < ApplicationController
  before_action :set_dose, only: [:show, :edit, :update]


  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to doses_path
    else
      render :new
    end
  end

  def update
  end

  def show
  end

  def edit
  end

  def destroy
    @dose.destroy
    redirect_to doses_path
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description)
  end
end
