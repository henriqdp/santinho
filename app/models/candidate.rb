class Candidate < ApplicationRecord
  belongs_to :voter
  belongs_to :party
end
