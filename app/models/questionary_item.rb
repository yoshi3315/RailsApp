class QuestionaryItem < ApplicationRecord
    
  belongs_to :questionary
  has_many :questionary_choises
  
  validates :content, presence: true

end
