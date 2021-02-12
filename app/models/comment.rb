class Comment < ApplicationRecord

  belongs_to :post
  belongs_to :user

  validates :commentator, presence: true
  validates :comment, presence: true, length: { in: 1..200 }

end
