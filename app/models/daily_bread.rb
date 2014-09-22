# == Schema Information
#
# Table name: daily_breads
#
#  id         :integer          not null, primary key
#  message    :string(255)
#  date       :date
#  created_at :datetime
#  updated_at :datetime
#  audio      :string(255)
#

class DailyBread < ActiveRecord::Base

	validates :date, uniqueness: true
	mount_uploader :message, ImageUploader
	mount_uploader :audio, BreadAudioUploader

	 validates :date, :presence => true
 	 validates :audio, :presence => true
 	 validates :message, :presence => true

 	def previous_bread
  		DailyBread.where("id > ?", self.id).order("id ASC").first || DailyBread.first
	end

	def next_bread
  		    DailyBread.where("id < ?", self.id).order("id DESC").first || DailyBread.last
	end
end
