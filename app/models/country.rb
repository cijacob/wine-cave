class Country < ApplicationRecord
  validates :name, presence: true
  has_many :wines 
  belongs_to :land
end
