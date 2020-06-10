class Story < ApplicationRecord
  belongs_to :collection
  belongs_to :plant
end
