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

class Friend < ActiveRecord::Base
   validates :name, presence: true
   validates :friend_email, presence: true
   validates :friend_email, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
end
