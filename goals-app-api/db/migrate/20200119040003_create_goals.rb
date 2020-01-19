class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :goalname
      t.boolean :completed
      t.date :goal_date
      t.integer :user_id
      t.integer :importance
      t.string :description

      t.timestamps
    end
  end
end
