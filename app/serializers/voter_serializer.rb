class VoterSerializer < ActiveModel::Serializer
  belongs_to :city

  attributes :id, :first_name, :surname, :email
end
