class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.integer :goal_id
      t.string :stepname
      t.string :description
      t.string :metric
      t.integer :miutes

      t.timestamps
    end
  end
end
