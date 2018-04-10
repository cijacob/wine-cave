class Color < ApplicationRecord
  validates :name, presence: true
  has_many :wines
end
