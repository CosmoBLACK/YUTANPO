class Comment < ApplicationRecord
  belongs_to :member
  belongs_to :onsen

  validates :comment_content, presence: true
  # 星の評価を1〜5段階で設定し、カラムに保存する
  validates :rate, numericality: {
      less_than_or_equal_to: 5,
      greater_than_or_equal_to: 1}, presence: true
end
