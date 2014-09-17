# == Schema Information
#
# Table name: bibles
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  bible_cover :string(255)
#  admin_id    :integer
#  status      :boolean
#  created_at  :datetime
#  updated_at  :datetime
#  parent_id   :integer
#
# Indexes
#
#  index_bibles_on_admin_id  (admin_id)
#

class Bible < ActiveRecord::Base
	acts_as_tree dependent: :destroy
	has_many :chapters
  belongs_to :admin
  mount_uploader :bible_cover,BibleCoverUploader
end
