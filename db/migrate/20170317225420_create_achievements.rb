class CreateAchievements < ActiveRecord::Migration[5.0]
  def change
    create_table :achievements do |t|
      t.integer :order
      t.string :description
      t.references :goal, foreign_key: true

      t.timestamps
    end
  end
end
