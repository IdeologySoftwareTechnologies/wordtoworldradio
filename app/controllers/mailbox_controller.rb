class MailboxController < ApplicationController
  def index
  	@prayerreq = Contact.where(:contacttype => 1)
  	@testimonials = Contact.where(:contacttype => 2)
  	@feedback = Contact.where(:contacttype => 3)
  end
end
