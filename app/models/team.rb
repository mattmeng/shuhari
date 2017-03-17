class Team < ApplicationRecord
  belongs_to :scrum_master, class_name: "User"
  has_many :goals, dependent: :destroy
  has_many :team_members, dependent: :destroy
end
