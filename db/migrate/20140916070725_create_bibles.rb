class CreateBibles < ActiveRecord::Migration
  def change
    create_table :bibles do |t|
      t.string :name
      t.string :bible_cover
      t.references :admin, index: true
      t.boolean :status

      t.timestamps
    end
  end
end
