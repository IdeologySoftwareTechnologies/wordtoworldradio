class BiblesController < ApplicationController
  before_action :set_bible, only: [:show, :edit, :update, :destroy] 
  
  def index     
    @bibles = Bible.search(params[:search])    
  end
  def show
    #redirect_to bible_chapters_path(@bible)  
  end  

        redirect_to bible_chapters_path(@bible)
  end

  # GET /bibles/new

  def new
    redirect_to bibles_path
  end  
  def edit
    redirect_to bibles_path 
  end
  def update
    redirect_to bibles_path
  end
  private    
    def set_bible
      @bible = Bible.find(params[:id])
    end    
    def bible_params
      params.require(:bible).permit(:name, :bible_cover, :admin_id, :status)
    end
end
