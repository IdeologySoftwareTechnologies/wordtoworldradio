class AlbumsController < ApplicationController
  before_action :set_album, only: [:edit, :update, :destroy]
  before_filter :loged_in?, :only => [:new,:create, :edit, :destroy]

  def index
    @albums = Album.all
  end
  def show
      # Query for showing  slider
        @album_first=Album.first
        @album_first_id=@album_first.id
        @albums_remain=Album.where('id NOT IN(?)', @album_first_id)
        @album = Album.find(params[:id])

       

    if params[:search]
      @albums = Album.search(params[:search]).order("created_at DESC")
        else
          @albums = Album.all
          @album_bottom_pagiantion  = Album.paginate(:page => params[:page], :per_page => 4)
    end

    if params[:audio_ids]
      @audios = @album.audios.where(id: params[:audio_ids] )
      else
        @audios = @album.audios.all
        @album_bottom_pagiantion  = Album.paginate(:page => params[:page], :per_page => 4)
    end
  end

  def new
    @album = Album.new
  end

  def edit
  end

  def create
    @album = Album.new(album_params)

    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, notice: 'Album was successfully created.' }
        format.json { render :show, status: :created, location: @album }
      else
        format.html { render :new }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @album.update(album_params)
        format.html { redirect_to @album, notice: 'Album was successfully updated.' }
        format.json { render :show, status: :ok, location: @album }
      else
        format.html { render :edit }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @album.destroy
    respond_to do |format|
      format.html { redirect_to albums_url, notice: 'Album was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
 # def getjson
    
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_album
      @album = Album.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def album_params
      params.require(:album).permit(:name, :cover, :banner)
    end
    def loged_in?
      redirect_to root_path
    end
end
