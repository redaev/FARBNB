class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  validates :departure_date, presence: true
  validates :arrival_date, presence: true
end
