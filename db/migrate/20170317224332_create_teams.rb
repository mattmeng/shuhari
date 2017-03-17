class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.references :scrum_master, foreign_key: true

      t.timestamps
    end
  end
end
