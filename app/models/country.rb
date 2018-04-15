class Country < ApplicationRecord
  validates :name, presence: true
  has_many :wines 
  belongs_to :land

  accepts_nested_attributes_for  :land, allow_destroy: true
end
