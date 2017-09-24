class Candidate < ApplicationRecord
  belongs_to :voter
  belongs_to :party

  validates :screen_name, presence: true
  validates: :number, presence: true
end
