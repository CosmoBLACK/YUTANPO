class Tag < ApplicationRecord
  has_many :onsen_tags, dependent: :destroy, foreign_key: 'tag_id'
  has_many :onsens, through: :onsen_tags

  validates :tag_name, uniqueness: true, presence: true
end
