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
end
