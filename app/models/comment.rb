class Comment < ApplicationRecord
  belongs_to :member
  belongs_to :onsen

  validates :comment, presence:true
end
