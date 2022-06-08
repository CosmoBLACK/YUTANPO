class Tag < ApplicationRecord
  has_many :onsen_tags, dependent: :destroy
  has_many :onsens, through: :onsen_tags

  validates :name, presence:true, uniqueness:true
end
