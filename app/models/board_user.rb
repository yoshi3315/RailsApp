class BoardUser < ApplicationRecord
  
  belongs_to :account
  has_many :board_messages
  
  validates :nickname, presence: true
  
end
