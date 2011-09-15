class Play < ActiveRecord::Base
  belongs_to :post
  belongs_to :account
end
