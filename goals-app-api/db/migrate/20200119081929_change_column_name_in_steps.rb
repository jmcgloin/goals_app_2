class ChangeColumnNameInSteps < ActiveRecord::Migration[6.0]
  def change
  	change_table :steps do |t|
  		t.rename :miutes, :minutes
  	end
  end
end
