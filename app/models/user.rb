class User < ApplicationRecord
  has_many :posts
  has_many :images
  has_many :links

end
