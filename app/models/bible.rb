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
#  slug        :string(255)
#  bible_type  :integer
#  category_id :integer
#
# Indexes
#
#  index_bibles_on_admin_id     (admin_id)
#  index_bibles_on_category_id  (category_id)
#  index_bibles_on_slug         (slug) UNIQUE
#

class Bible < ActiveRecord::Base
  validates :name, :presence => true
  has_many :chapters, dependent: :destroy
  belongs_to :category, dependent: :destroy
  extend FriendlyId
    friendly_id :slug_candidates, use: [:slugged, :finders]

    # Try building a slug based on the following fields in
    # increasing order of specificity.
    def slug_candidates
      [
        :name
      ]
    end

    def should_generate_new_friendly_id?
      slug.blank? || name_changed?
    end


	
	
  belongs_to :admin
  mount_uploader :bible_cover,BibleCoverUploader
 

  def next
    Bible.where("id > ?", self.id).order("id ASC").first || Bible.first 
  end

  def prev
    Bible.where("id < ?", self.id).order("id DESC").first || Bible.last
  end

  


  def self.search(search)
        if search
             where("name like ?", "%#{search}%") 
        else
            all
        end
  end



  
end
