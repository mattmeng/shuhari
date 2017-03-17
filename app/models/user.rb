class User < ApplicationRecord
  has_many :leads, foreign_key: "scrum_master_id", class_name: "Team"
  has_many :team_members, dependent: :destroy
end
