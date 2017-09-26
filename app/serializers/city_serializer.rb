class CitySerializer < ActiveModel::Serializer
  belongs_to :state

  attributes :id, :name, :state
end
