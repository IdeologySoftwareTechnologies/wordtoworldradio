# == Schema Information
#
# Table name: daily_breads
#
#  id         :integer          not null, primary key
#  message    :string(255)
#  date       :date
#  created_at :datetime
#  updated_at :datetime
#  audio      :string(255)
#

require 'rails_helper'

RSpec.describe DailyBread, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
