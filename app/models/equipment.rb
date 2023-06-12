class Equipment < ApplicationRecord
  has_many :flat_equipments
  has_many :flats, through: :flat_equipments
end
