class TeamMemberAchievement < ApplicationRecord
  belongs_to :team_member
  belongs_to :achievement
end
