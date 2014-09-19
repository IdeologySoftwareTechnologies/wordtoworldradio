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

require 'rails_helper'

RSpec.describe Contact, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
