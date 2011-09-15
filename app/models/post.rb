class Post < ActiveRecord::Base
  belongs_to :account
  has_many :plays

  has_attached_file :file,
  :storage => :s3,
  :s3_credentials => "#{Rails.root.to_s}/config/s3.yml",
  :path => "/accounts/:account_id/posts/:id/:basename_:style.:extension"
end
