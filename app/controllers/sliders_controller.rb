class SlidersController < ApplicationController
  before_action :set_slider, only: [:show, :edit, :update, :destroy]

  # GET /sliders
  # GET /sliders.json
  def index
    @sliders = Slider.all
  end

  # GET /sliders/1
  # GET /sliders/1.json
  def show
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slider
      @slider = Slider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slider_params
      params.require(:slider).permit(:name, :description, :slide, :status, :admin_id)
    end
end
