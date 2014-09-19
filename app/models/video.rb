# == Schema Information
#
# Table name: videos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  video      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Video < ActiveRecord::Base
	mount_uploader :video, VideoUploader

	def set_success(format, opts)
    	self.success = true
    end
     validates :name, :presence => true
 	 validates :video, :presence => true
end
