class Book < ApplicationRecord
  belongs_to :user
  mount_uploader :image, ImageUploader
  enum genre: {"文芸": 1, "人文": 2, "実用書": 3 }
end
