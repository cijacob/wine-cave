class Wine < ApplicationRecord
  validates :name, presence: true, length: {minimum: 5, maximum: 20}
  validates :description, presence: true, length: {minimum: 10, maximum: 100}
  belongs_to :domain
  belongs_to :color
  belongs_to :year
  belongs_to :country
end
 