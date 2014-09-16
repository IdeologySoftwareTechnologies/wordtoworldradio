class CreateBibleHierarchyDependencies < ActiveRecord::Migration
  def change
    add_column :bibles, :parent_id, :integer
 
    create_table :bible_hierarchies, :id => false do |t|
      t.integer  :ancestor_id, :null => false
      t.integer  :descendant_id, :null => false
      t.integer  :generations, :null => false
    end
 
    add_index :bible_hierarchies, [:ancestor_id, :descendant_id], :unique => true
    add_index :bible_hierarchies, [:descendant_id]
  end
end
