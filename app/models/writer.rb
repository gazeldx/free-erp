class User < ApplicationRecord
  has_many :books

  validates :name, presence: true, length: { minimum: 2, maximum: 99 }
  validates :bio, presence: true, length: { minimum: 5 }
end
