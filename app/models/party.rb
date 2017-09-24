class Party < ApplicationRecord
  has_many :candidates

  validates :name, presence: true
  validates :initials, presence: true
  validates :initials, length: {maximum: 10, too_long: "Máximo de 10 caracteres"}
end
