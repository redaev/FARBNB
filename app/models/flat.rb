class Flat < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  validates :voyagers_number, presence: true
  validates :price, presence: true
end
