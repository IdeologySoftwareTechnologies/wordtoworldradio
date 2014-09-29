# == Schema Information
#
# Table name: sliders
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  slide       :string(255)
#  status      :boolean
#  admin_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_sliders_on_admin_id  (admin_id)
#

class Slider < ActiveRecord::Base
	mount_uploader :slide, SlideUploader
	validates :name, presence: true
    validates :description, presence: true
    validates :slide, presence: true
  belongs_to :admin
end
