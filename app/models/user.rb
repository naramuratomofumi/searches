class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :color

  validates :nickname, presence: true
  validates :fav_col_id, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 15, message: 'が選択されていません' }
  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: 'は英字と数字の両方を含めて設定してください' }, allow_blank: true

  has_many :prototypes, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_prototypes, through: :likes, source: :prototype # userがどの投稿をいいねしているのかを簡単に取得できるようにした #
  def already_liked?(prototype)
    likes.exists?(prototype_id: prototype.id) # ユーザーが投稿に対して、すでにいいねをしているのかどうかを判定することができるようにalready_liked?を定義 #
  end
end
