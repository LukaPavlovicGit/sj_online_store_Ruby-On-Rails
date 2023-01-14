class Reclamation < ApplicationRecord
  # belongs_to :user
  # belongs_to :article

  validates :description, presence: true, length: { minimum: 1 }
  validates :user_id, presence: true, numericality: { greater_than: 0, only_integer: true }
  validates :article_id, presence: true, numericality: { greater_than: 0, only_integer: true }
end
