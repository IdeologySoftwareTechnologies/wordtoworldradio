class ChaptersController < ApplicationController
  

  def index
    @chapters = Chapter.all
    
  end
  def show
    @categories = Category.all 
    puts "==========================Catergory===========================",params[:category_id]
    puts "===========================Bible==========================",params[:bible_id]
    puts "============================Chapter=========================",params[:id]

    if params[:category_id].to_i ==0
       @bibles = Bible.search(params[:search])
    else
       @category = Category.find(params[:category_id].to_i)
       @bibles = @category.bibles.all 
    end
     
    @bible = Bible.find_by_slug(params[:bible_id])
    @chapter = Chapter.find_by_slug(params[:id])

    @chapters = @bible.chapters.all  
    #@chapter = Chapter.find(params[:id])
    #@bible = Bible.find(params[:bible_id])     
  end







  private   
    
    def chapter_params
      params.require(:chapter).permit(:chapter_number, :chapter_image, :chapter_audio, :bible_id, :admin_id, :status)
    end 
end
