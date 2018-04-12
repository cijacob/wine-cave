class Wine < ApplicationRecord
  validates :name, presence: true, length: {minimum: 5, maximum: 20}
  validates :description, presence: true, length: {minimum: 10, maximum: 100}
  validates :domain, :color, :year, :country, presence: true 
  belongs_to :domain
  belongs_to :color
  belongs_to :year
  belongs_to :country

  accepts_nested_attributes_for :color, :year, :country, :domain, allow_destroy: true
end
 