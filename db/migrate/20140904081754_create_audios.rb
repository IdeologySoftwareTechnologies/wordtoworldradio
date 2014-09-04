class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audios do |t|
      t.string :name
      t.string :audio
      t.string :album_id
      t.string :artist

      t.timestamps
    end
  end
end
