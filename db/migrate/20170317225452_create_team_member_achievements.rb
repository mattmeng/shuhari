class CreateTeamMemberAchievements < ActiveRecord::Migration[5.0]
  def change
    create_table :team_member_achievements do |t|
      t.references :team_member, foreign_key: true
      t.references :achievement, foreign_key: true

      t.timestamps
    end
  end
end
