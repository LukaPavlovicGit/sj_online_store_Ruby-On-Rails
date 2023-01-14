class Order < ApplicationRecord
  has_many :articles
  # belongs_to :user
  # belongs_to :delivery

  validates :user_id, presence: true, numericality: { greater_than: 0, only_integer: true }
  validates :delivery_id, numericality: { greater_than: 0, only_integer: true }
  validates :total_price, presence: true, numericality: { greater_than: -1 }
end
