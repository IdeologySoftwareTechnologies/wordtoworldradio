class WelcomeController < ApplicationController
  def index
  	@prayerreq = Contact.where(:contacttype => 1).take(4)
  	@sliders = Slider.all
  	@albums=Album.all
  	
  	

  	@album_first=Album.first
  	@album_first_id=@album_first.id
  	@albums_remain=Album.where('id NOT IN(?)', @album_first_id)


  end
end
