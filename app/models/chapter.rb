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

class Chapter < ActiveRecord::Base

     validates :chapter_number,:bible_id,:chapter_image :presence => true
    extend FriendlyId
    friendly_id :slug_candidates, use: [:slugged, :finders]
    

  
    before_create :bible_name
 
    # Try building a slug based on the following fields in
    # increasing order of specificity.
    def slug_candidates
      [
        
        [:chapter_number, :bible_name]
           
      ]
    end

    def should_generate_new_friendly_id?
      slug.blank? || id_changed?
    end

  belongs_to :bible, dependent: :destroy
  belongs_to :admin
  mount_uploader :chapter_image,ChapterImageUploader
  mount_uploader :chapter_audio,ChapterAudioUploader
  
  def next
    Chapter.where("id > ?", self.id).order("id ASC").first || Chapter.first
  end

  def prev
    Chapter.where("id < ?", self.id).order("id DESC").first || Chapter.last
  end
   

def bible_name
  "#{self.bible.name}".parameterize
end


end
