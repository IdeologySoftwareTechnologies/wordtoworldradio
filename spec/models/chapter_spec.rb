# == Schema Information
#
# Table name: chapters
#
#  id             :integer          not null, primary key
#  chapter_number :integer
#  chapter_image  :string(255)
#  chapter_audio  :string(255)
#  bible_id       :integer
#  admin_id       :integer
#  status         :boolean
#  created_at     :datetime
#  updated_at     :datetime
#  slug           :string(255)
#
# Indexes
#
#  index_chapters_on_admin_id  (admin_id)
#  index_chapters_on_bible_id  (bible_id)
#  index_chapters_on_slug      (slug) UNIQUE
#

require 'rails_helper'

RSpec.describe Chapter, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
