class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.integer :chapter_number
      t.string :chapter_image
      t.string :chapter_audio
      t.references :bible, index: true
      t.references :admin, index: true
      t.boolean :status

      t.timestamps
    end
  end
end
