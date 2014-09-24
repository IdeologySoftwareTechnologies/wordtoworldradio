class AddDetailsToBible < ActiveRecord::Migration
  def change
    add_column :bibles, :bible_type, :integer
  end
end
