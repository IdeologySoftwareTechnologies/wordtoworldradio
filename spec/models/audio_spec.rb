# == Schema Information
#
# Table name: audios
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  audio      :string(255)
#  album_id   :string(255)
#  artist     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Audio, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
