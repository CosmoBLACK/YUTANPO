class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :comments, dependent: :destroy
  has_one_attached :profile_image

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true, on: :create # on: :create = 新規登録時のみバリデーションがかかる。
  validates :password_confirmation, presence: true, on: :create

  def get_profile_image(width, height)
    unless profile_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      profile_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    profile_image.variant(resize_to_limit: [width, height]).processed
  end

  def self.guest
    # find_or_create_by = データの検索と作成を自動的に判断して処理を行うRailsメソッド
    find_or_create_by!(name: 'guestuser' ,email: 'guest@example.com') do |user|
      # SecureRandom.urlsafe_base64 = ランダムな文字列を生成するRubyメソッドの一種
      user.password = SecureRandom.urlsafe_base64
      user.name = "guestuser"
    end
  end
end
