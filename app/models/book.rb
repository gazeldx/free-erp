class Book < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { minimum: 2, maximum: 199 }
  validates :user, presence: true
end
