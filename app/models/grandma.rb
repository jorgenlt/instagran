class Grandma < ApplicationRecord
  validates :first_name, :last_name, :address, presence: true
  validates :description, length: { minimum: 10 }
  has_many :bookings
  belongs_to :user
end
