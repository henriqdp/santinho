class Voter < ApplicationRecord
  belongs_to :city
  has_one :candidate
end
