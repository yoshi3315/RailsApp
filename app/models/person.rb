class Person < ApplicationRecord
  validates :name, presence: true
  validates :age, numericality: true
  validates :mail, email: true
end
