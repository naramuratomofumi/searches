class Color < ActiveHash::Base
  self.data = [
    { id: 1, name: 'ブラック系' },
    { id: 2, name: 'ホワイト系' },
    { id: 3, name: 'グレー系' },
    { id: 4, name: 'ピンク系' },
    { id: 5, name: 'レッド系' },
    { id: 6, name: 'オレンジ系' },
    { id: 7, name: 'イエロー系' },
    { id: 8, name: 'カーキ系' },
    { id: 9, name: 'グリーン系' },
    { id: 10, name: 'ブルー系' },
    { id: 11, name: 'パープル系' },
    { id: 12, name: 'ネイビー系' },
    { id: 13, name: 'ブラウン系' },
    { id: 14, name: 'ベージュ系' },
    { id: 15, name: 'デニム系' }
  ]

  include ActiveHash::Associations
  has_many :users
  has_many :prototypes
end
