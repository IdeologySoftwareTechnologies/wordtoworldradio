class AddSlugToBibles < ActiveRecord::Migration
  def change
    add_column :bibles, :slug, :string
    add_index :bibles, :slug, unique: true
  end
end
