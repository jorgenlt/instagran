class Grandma < ApplicationRecord
  validates :first_name, :last_name, :address, presence: true
  validates :description, length: { minimum: 10 }
  has_many :bookings
  belongs_to :user
<<<<<<< HEAD
  has_many_attached :photo_url
  # validates :photo_url, limit: { min: 1, max: 3 }
=======
  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
  against: [ :first_name, :last_name, :description ],
  using: {
    tsearch: { prefix: true }
  }
>>>>>>> f72b4f28f48946cba2a9f91a79342acad1275fe1
end
