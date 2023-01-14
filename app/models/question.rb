class Question < ApplicationRecord

  validates :question, presence: true, length: { minimum: 1 }
  validates :answer, presence: true, length: { minimum: 1 }
end
