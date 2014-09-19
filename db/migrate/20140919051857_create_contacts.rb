class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.text :message
      t.integer :contacttype
      t.boolean :approval
      t.boolean :status
      t.references :admin, index: true

      t.timestamps
    end
  end
end
