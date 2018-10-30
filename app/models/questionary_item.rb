class QuestionaryItem < ApplicationRecord
    
  belongs_to :questionary
  has_many :questionary_choices
  
  validates :content, presence: true

end
