class TeamMember < ApplicationRecord
  belongs_to :team
  belongs_to :user
  has_many :team_member_achievements, dependent: :destroy
end
