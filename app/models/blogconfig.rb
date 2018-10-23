class Blogconfig < ApplicationRecord
  
  validates :title, :stylename, presence: true
  
end
