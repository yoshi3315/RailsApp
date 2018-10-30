class QuestionaryResult < ApplicationRecord
  
  belongs_to :questionary
  
  validates :result, presence: true

end
