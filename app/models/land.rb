class Land < ApplicationRecord
  validates :name, presence: true
  has_many :countries
end
