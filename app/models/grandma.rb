class Grandma < ApplicationRecord
  validates :first_name, :last_name, :address, presence: true
  validates :description, length: { minimum: 10 }
  has_many :bookings
  belongs_to :user
  has_many_attached :photo_url
  # validates :photo_url, limit: { min: 1, max: 3 }
end
