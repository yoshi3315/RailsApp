class Mycontact < ApplicationRecord
  validates :name, presence: true
  validates :age, numericality: true
  validates :nationality, inclusion: { in: [true, false] }
end
