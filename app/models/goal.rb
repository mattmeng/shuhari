class Goal < ApplicationRecord
  belongs_to :team
  has_many :achievements, dependent: :destroy
end
