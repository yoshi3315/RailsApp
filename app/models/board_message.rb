class BoardMessage < ApplicationRecord
  
  belongs_to :board_user
  
  validates :content, presence: true
  
end
