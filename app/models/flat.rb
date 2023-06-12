class Flat < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  validates :number_of_guests, presence: true
  validates :price, presence: true
  validates :name, presence: true, uniqueness: true
  validates :planet, presence: true
  # has_many :reviews, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :bookings
end
