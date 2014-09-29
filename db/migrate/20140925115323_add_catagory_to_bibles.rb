class AddCatagoryToBibles < ActiveRecord::Migration
  def change
    add_reference :bibles, :category, index: true
  end
end
