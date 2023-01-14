class Article < ApplicationRecord
  # belongs_to :category
  # belongs_to :order
  has_many :comments

  validates :category_id, presence: true, numericality: { greater_than: 0, only_integer: true }
  validates :order_id, presence: false, numericality: { greater_than: 0, only_integer: true }
  validates :manufacturer, presence: true, length: { minimum: 1 }
  validates :name, presence: true, length: { minimum: 1 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
