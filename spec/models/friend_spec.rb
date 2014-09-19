# == Schema Information
#
# Table name: friends
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  friend_email :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

require 'rails_helper'

RSpec.describe Friend, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
