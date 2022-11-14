class Booking < ApplicationRecord
  belongs_to :grandma
  belongs_to :user
  validates :start_time, :end_time, :date, presence: true
end
