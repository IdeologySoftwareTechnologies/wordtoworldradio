# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  date       :date
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
	validates :date, uniqueness: true
	mount_uploader :name, ImageUploader
end
