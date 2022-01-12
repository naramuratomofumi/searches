class Prototype < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :season
  belongs_to :tops_category
  belongs_to :bottom_category
  belongs_to :acc_category
  belongs_to :color
  belongs_to :user
  has_one_attached :image

  validates :season_id, numericality: { other_than: 1, message: 'が選択されていません' }
  validates :main_tops_category_id, numericality: { other_than: 1, message: 'が選択されていません' }
  validates :main_tops_col_id, numericality: { other_than: 1, message: 'が選択されていません' }
  validates :text, presence: true
  validates :image, presence: true
end
