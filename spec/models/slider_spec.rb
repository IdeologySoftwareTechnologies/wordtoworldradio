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

require 'rails_helper'

RSpec.describe Slider, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
