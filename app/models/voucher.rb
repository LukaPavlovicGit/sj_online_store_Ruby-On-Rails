class Voucher < ApplicationRecord
  # belongs_to :user

  validates :user_id, presence: true, numericality: { greater_than: 0, only_integer: true }
  validates :value, presence: true, numericality: { greater_than: 0 }
  validates :comment, presence: true, length: { minimum: 1 }
end
