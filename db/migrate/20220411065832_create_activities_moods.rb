class CreateActivitiesMoods < ActiveRecord::Migration[5.2]
  def change
    create_table :activities_moods, :id => false do |t|
      t.integer :activity_id 
      t.integer :mood_id
    end
  end
end
