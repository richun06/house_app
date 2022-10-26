class ChangeDatatypeWalkingMinutesOfStations < ActiveRecord::Migration[6.0]
  def change
    change_column :stations, :walking_minutes, :string
  end
end
