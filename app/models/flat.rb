class Flat < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  validates :number_of_guests, presence: true
  validates :price, presence: true
  validates :name, presence: true, uniqueness: true
  validates :planet, presence: true
  # has_many :reviews, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :bookings
  has_many :flat_equipments
  has_many :equipments, through: :flat_equipments
  accepts_nested_attributes_for :equipments
end
