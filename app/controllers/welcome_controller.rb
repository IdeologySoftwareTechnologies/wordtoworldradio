class WelcomeController < ApplicationController
  def index
  	@prayerreq = Contact.where(:contacttype => 1).take(4)
  	@sliders = Slider.all
  	@albums=Album.all
  	
  	
    @videos = Video.all
    @video_first=Video.first
  	@album_first=Album.first
  	


  end
end
