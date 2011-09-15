class Account < ActiveRecord::Base
  has_many :posts
  has_many :plays
end
