class Person < ApplicationRecord
  
  has_many :messages

  validates :name, presence: true
  validates :age, numericality: true
  validates :mail, email: true

end
