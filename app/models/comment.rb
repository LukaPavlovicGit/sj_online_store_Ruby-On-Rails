class Comment < ApplicationRecord
  # belongs_to :user
  # belongs_to :article

  validates :article_id, presence: true, numericality: { greater_than: 0, only_integer: true }
  validates :rate, presence: true, numericality: { greater_than: 0, less_than: 11, only_integer: true }
  validates :text, presence: true, length: { minimum: 1 }
end
