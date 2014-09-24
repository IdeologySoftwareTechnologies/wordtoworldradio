class BiblesController < ApplicationController
  before_action :set_bible, only: [:show, :edit, :update, :destroy]

  # GET /bibles
  # GET /bibles.json
  def index
     
    @bibles = Bible.search(params[:search])
    
  end

  # GET /bibles/1
  # GET /bibles/1.json
  def show

        redirect_to bible_chapters_path(@bible)
   
  end

  # GET /bibles/new
  def new
    redirect_to bibles_path
  end

  # GET /bibles/1/edit
  def edit
    redirect_to bibles_path 
     end

  def update
    redirect_to bibles_path
  end

 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bible
      @bible = Bible.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bible_params
      params.require(:bible).permit(:name, :bible_cover, :admin_id, :status)
    end
end
