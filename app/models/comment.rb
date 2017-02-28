class Comment < ApplicationRecord
  has_many :notifications, as: :notifiable
  belongs_to :post
  belongs_to :visitor
end
