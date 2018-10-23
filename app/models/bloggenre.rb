class Bloggenre < ApplicationRecord
  
  has_many :blogpost
  
  validates :name, presence: true
  
end
