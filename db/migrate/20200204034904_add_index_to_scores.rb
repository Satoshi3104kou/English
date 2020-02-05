class AddIndexToScores < ActiveRecord::Migration[5.2]
  def change
    add_index :words,  :letter
  end
end
