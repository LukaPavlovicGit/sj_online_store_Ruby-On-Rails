class Store < ApplicationRecord

  validates :location, presence: true, length: { minimum: 1 }
end
