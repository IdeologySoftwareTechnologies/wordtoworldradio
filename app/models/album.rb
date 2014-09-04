# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  cover      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Album < ActiveRecord::Base
	mount_uploader :cover, CoverUploader
	has_many :audios

	 def self.search(query)
   	 # where(:title, query) -> This would return an exact match of the query
   	 where("name like ?", "%#{query}%") 
 	 end
end
