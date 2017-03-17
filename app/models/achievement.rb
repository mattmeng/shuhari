class Achievement < ApplicationRecord
  belongs_to :goal
  has_many :team_member_achievements, dependent: :destroy
end
