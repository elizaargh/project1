class CreateActivitiesMood < ActiveRecord::Migration[5.2]
  def change
    create_table :activities_moods do |t|
      t.integer :activities_id
      t.integer :moods_id
    end
  end
end
