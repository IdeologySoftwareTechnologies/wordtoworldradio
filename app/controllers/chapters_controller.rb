class ChaptersController < ApplicationController
  before_action :set_chapter, only: [:show]
  before_action :set_bible, only: [:show]

  def index
    @chapters = Chapter.all
  end


  def show
    

    if params[:bible_type].to_i == 1
      puts "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",params[:bible_type].to_i
      @bibles = Bible.where(bible_type: params[:bible_type].to_i)  
    elsif params[:bible_type].to_i == 2
      @bibles = Bible.where(bible_type: params[:bible_type].to_i)
      puts "BBBBBBBBBBBBBBBBBBBBBBBBBBBB",params[:bible_type].to_i
    else
      @bibles = Bible.all  
    end  
   # render bible_chapter_path(bible_type: params[:bible_type].to_i)
  end





  private
   
    def set_bible
       @bible = Bible.find(params[:bible_id]) 
    end
    def set_chapter
      @chapter = Chapter.find(params[:id])
    end

  
    def chapter_params
      params.require(:chapter).permit(:chapter_number, :chapter_image, :chapter_audio, :bible_id, :admin_id, :status)
    end

 
end
