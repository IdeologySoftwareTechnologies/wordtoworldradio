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
#
# Indexes
#
#  index_chapters_on_admin_id  (admin_id)
#  index_chapters_on_bible_id  (bible_id)
#

class Chapter < ActiveRecord::Base
  belongs_to :bible
  belongs_to :admin
  mount_uploader :chapter_image,ChapterImageUploader
  mount_uploader :chapter_audio,ChapterAudioUploader
  
  def next
    Chapter.where("id > ?", self.id).order("id ASC").first || Chapter.first 
  end

  def prev
    Chapter.where("id < ?", self.id).order("id DESC").first || Chapter.last
  end
end
