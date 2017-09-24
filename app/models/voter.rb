class Voter < ApplicationRecord
  belongs_to :city
  has_one :candidate, dependent: :destroy

  validates :first_name, presence: true
  validates :surname, presence: true

  validates :password_digest, presence: true

  validates :email, :email_format => {:message => "Formato de e-mail inválido."}

  has_secure_password
  has_secure_token
end
