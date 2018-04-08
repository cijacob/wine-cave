class Country < ApplicationRecord
  has_many :wines 
  belongs_to :land
end
