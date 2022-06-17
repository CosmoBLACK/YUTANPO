class Onsen < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :onsen_tags, dependent: :destroy
  has_many :tags, through: :onsen_tags
  has_one_attached :onsen_image

  validates :name, presence: true, uniqueness: true
  validates :introduction, presence: true
  validates :postal_code, presence: true
  validates :address, presence: true

  def save_tag(sent_tags)
    # unless~は「タグが存在してるか？」を確認
    # タグが存在していれば、タグの名前を配列として全て取得
    current_tags = self.tags.pluck(:tag_name) unless self.tags.nil?
    # 現在取得したタグから、新たに送られてきたタグを除いてold_tagに代入する
    old_tags = current_tags - sent_tags
    # 送信されてきたタグから現在存在するタグを除いたタグをnewとする
    new_tags = sent_tags - current_tags

    # 古いタグを消す
    old_tags.each do |old|
      self.tags.delete　Tag.find_by(tag_name: old)
    end

    # 新しいタグを保存
    new_tags.each do |new|
      new_onsen_tag = Tag.find_or_create_by(tag_name: new)
      self.tags << new_onsen_tag
    end
  end

  def get_onsen_image(width, height)
    unless onsen_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      onsen_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    onsen_image.variant(resize_to_limit: [width, height]).processed
  end

  def self.looks(search, word)
    if search == "perfect_match"
      @onsen = Onsen.where("name LIKE? or address LIKE?","#{word}","#{word}")
    elsif search == "forward_match"
      @onsen = Onsen.where("name LIKE? or address LIKE?","#{word}%","#{word}%")
    elsif search == "backward_match"
      @onsen = Onsen.where("name LIKE? or address LIKE?","%#{word}","%#{word}")
    elsif search == "partial_match"
      @onsen = Onsen.where("name LIKE? or address LIKE?","%#{word}%","%#{word}%")
    else
      @onsen = Onsen.all
    end
  end

end
