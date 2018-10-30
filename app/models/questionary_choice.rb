class QuestionaryChoice < ApplicationRecord
      
  belongs_to :questionary_item
  
  validates :content, :value, presence: true
  validates :value, numericality: true

end
