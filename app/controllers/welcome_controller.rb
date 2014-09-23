class WelcomeController < ApplicationController
  def index
  	@prayerreq = Contact.where(:contacttype => 1).take(4)
  end
end
