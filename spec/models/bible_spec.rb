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

require 'rails_helper'

RSpec.describe Bible, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
