class Color < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ブラック系' },
    { id: 3, name: 'ホワイト系' },
    { id: 4, name: 'グレー系' },
    { id: 5, name: 'レッド系' },
    { id: 6, name: 'イエロー系' },
    { id: 7, name: 'グリーン系' },
    { id: 8, name: 'ブルー系' },
    { id: 9, name: 'パープル系' },
    { id: 10, name: 'ネイビー系' },
    { id: 11, name: 'ブラウン系' },
    { id: 12, name: 'ベージュ系' },
    { id: 13, name: 'インディゴ系' }
  ]

  include ActiveHash::Associations
  has_many :users
end