class CreateDailyBreads < ActiveRecord::Migration
  def change
    create_table :daily_breads do |t|
      t.string :message
      t.date :date

      t.timestamps
    end
  end
end
