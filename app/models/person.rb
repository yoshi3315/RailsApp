class Person < ApplicationRecord
  
  has_many :message

  validates :name, presence: true
  validates :age, numericality: true
  validates :mail, email: true

end
