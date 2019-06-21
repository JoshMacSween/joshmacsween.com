class Quote < ApplicationRecord
  validates :saying, presence: true, length: {minimum: 20, maximum: 500}
  validates :author, presence: true, length: { minimum: 2, maximum: 30}
end