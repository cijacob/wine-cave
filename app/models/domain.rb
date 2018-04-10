class Domain < ApplicationRecord
  validates :name, presence: true 
  has_many :wines
end
