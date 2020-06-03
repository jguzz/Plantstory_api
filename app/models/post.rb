class Post < ApplicationRecord
  belongs_to :story
  has_one_attached :postImg 
end
