class Questionary < ApplicationRecord
  
  has_many :questionary_items
  has_many :questionary_results
  
  validates :title, :description, :deadline, presence: true

end
