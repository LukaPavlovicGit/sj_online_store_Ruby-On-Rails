class Delivery < ApplicationRecord
  has_many :orders

  validates :delivery_date, presence: true
end
