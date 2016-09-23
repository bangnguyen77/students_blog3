class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :content, :username, :post_id, :presence => true
end
