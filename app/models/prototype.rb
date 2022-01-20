class Prototype < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :season
  belongs_to :tops_category
  belongs_to :bottom_category
  belongs_to :acc_category
  belongs_to :color
  belongs_to :user
  has_one_attached :image
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user   # 投稿が誰にいいねしているのかを簡単に取得できるようにした #

  def favorited_by?(user)
    likes.where(user_id: user.id).exists?  # 引数で渡されたuser.idがLikeテーブル内に存在（exists?）するかどうかを調べます。#
  end

  validates :season_id, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 10, message: 'が選択されていません' }
  validates :main_tops_category_id, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 3, message: 'が選択されていません' }
  validates :main_tops_col_id, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 15, message: 'が選択されていません' }
  validates :text, presence: true
  validates :image, presence: true
end
