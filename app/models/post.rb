class Post < ApplicationRecord
  has_one_attached :post 
  belongs_to :story
end
