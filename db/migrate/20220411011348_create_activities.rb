class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.text :name
      t.text :theme

      t.timestamps
    end
  end
end
