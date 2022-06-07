class Tag < ApplicationRecord
  has_many :onsens, through: :onsen_tags

  validates :name, presence:true, uniqueness:true
end
