class Wine < ApplicationRecord
  belongs_to :domain
  belongs_to :color
  belongs_to :year
end
 