class AudiosController < ApplicationController
	   before_filter :loged_in?, :only => [:new,:create, :edit, :destroy]

	def index
		@audios=Audio.all
	end
	def new
		@audio = Audio.new
	end
	def create
		@album = Album.find(params[:album_id])
		@audio=@album.audios.create(audio_params)
		redirect_to album_path(@album)
	end


	private
		def audio_params
			params.require(:audio).permit(:name,:audio,:album_id, :artist)
		end
	def loged_in?
      redirect_to root_path
    end
end
