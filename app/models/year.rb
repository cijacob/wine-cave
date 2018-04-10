class Year < ApplicationRecord
  validates :year, presence: true 
  has_many :wines
end
