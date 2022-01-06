class Prototype < ApplicationRecord
  belongs_to :user

  validates :season_id, numericality: { other_than: 1, message: 'が選択されていません'}
  validates :main_tops_category_id, numericality: { other_than: 1, message: 'が選択されていません'}
  validates :main_tops_col_id, numericality: { other_than: 1, message: 'が選択されていません'}
  validates :text, presence: true
  validates :user_id, presence: true
  validates :image, presence: true
end
