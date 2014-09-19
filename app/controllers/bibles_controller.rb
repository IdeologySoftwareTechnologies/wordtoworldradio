class BiblesController < ApplicationController
  before_action :set_bible, only: [:show, :edit, :update, :destroy]

  # GET /bibles
  # GET /bibles.json
  def index
     
    @bibles = Bible.all
  end

  # GET /bibles/1
  # GET /bibles/1.json
  def show

        redirect_to bible_chapters_path(@bible)
   
  end

  # GET /bibles/new
  def new
    @bible = Bible.new
  end

  # GET /bibles/1/edit
  def edit
  end

  # POST /bibles
  # POST /bibles.json
  
  def create   
    s=params[:parent_id]    
    if s=="0"        
        @bible = Bible.new(bible_params)
        if Bible.create(:name => @bible.name)
          redirect_to @bible
        end
    else
      @bible = Bible.new(bible_params)      
      p=Bible.find_by id:params[:parent_id]      
      respond_to do |format|
        if p.add_child @bible
            format.html { redirect_to @bible, notice: 'bible was successfully created.' }
            format.json { render :show, status: :created, location: @bible }
        else
            format.html { render :new }
            format.json { render json: @bible.errors, status: :unprocessable_entity }
        end   
      end
    end
  end

  # PATCH/PUT /bibles/1
  # PATCH/PUT /bibles/1.json
  def update
    respond_to do |format|
      if @bible.update(bible_params)
        format.html { redirect_to @bible, notice: 'Bible was successfully updated.' }
        format.json { render :show, status: :ok, location: @bible }
      else
        format.html { render :edit }
        format.json { render json: @bible.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bibles/1
  # DELETE /bibles/1.json
  def destroy
    @bible.destroy
    respond_to do |format|
      format.html { redirect_to bibles_url, notice: 'Bible was successfully destroyed.' }
      format.json { head :no_content }
    end
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
