# == Schema Information
#
# Table name: news
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe News, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
