class AddAudioToDailyBreads < ActiveRecord::Migration
  def change
    add_column :daily_breads, :audio, :string
  end
end
