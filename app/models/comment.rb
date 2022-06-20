class Comment < ApplicationRecord
  belongs_to :member
  belongs_to :onsen

  validates :comment_content, presence: true
  # 星の評価を1〜5段階で設定し、カラムに保存する
  validates :rate, presence: true
end
