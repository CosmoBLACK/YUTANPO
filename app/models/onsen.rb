class Onsen < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :tags, through: :onsen_tags
  has_one_attached :onsen_image

  validates :name, presence: true, uniqueness: true
  validates :introduction, presence: true
  validates :address, presence: true

  def get_onsen_image(width, height)
    unless onsen_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      onsen_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    onsen_image.variant(resize_to_limit: [width, height]).processed
  end

  scope :latest, -> {order(created_at: :desc)}

end
