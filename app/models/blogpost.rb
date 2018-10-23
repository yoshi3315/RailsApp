class Blogpost < ApplicationRecord
  
  belongs_to :bloggenre
  
  validates :title, :content, presence: true
  
end
