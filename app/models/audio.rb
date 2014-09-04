# == Schema Information
#
# Table name: audios
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  audio      :string(255)
#  album_id   :string(255)
#  artist     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Audio < ActiveRecord::Base
	mount_uploader :audio, AudioUploader
	belongs_to :album
	 def self.search(query)
   	 # where(:title, query) -> This would return an exact match of the query
   	 where("name like ?", "%#{query}%") 
 	 end	
end
