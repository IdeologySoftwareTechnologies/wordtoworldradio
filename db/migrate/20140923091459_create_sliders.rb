class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :name
      t.text :description
      t.string :slide
      t.boolean :status
      t.references :admin, index: true

      t.timestamps
    end
  end
end
