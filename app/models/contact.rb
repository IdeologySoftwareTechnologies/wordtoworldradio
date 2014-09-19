# == Schema Information
#
# Table name: contacts
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  email       :string(255)
#  message     :text
#  contacttype :integer
#  approval    :boolean
#  status      :boolean
#  admin_id    :integer
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_contacts_on_admin_id  (admin_id)
#

class Contact < ActiveRecord::Base
  belongs_to :admin
   validates :name, presence: true
   validates :message, presence: true
   validates :email, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
end
