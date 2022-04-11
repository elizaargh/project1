class CreateMoodsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :moods_users do |t|
      t.integer :mood_id
      t.integer :user_id
    end
  end
end
