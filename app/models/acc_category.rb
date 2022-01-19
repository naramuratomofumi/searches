class AccCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: 'キャップ' },
    { id: 2, name: 'ハット' },
    { id: 3, name: 'ハンドバック' },
    { id: 4, name: 'バックパック' },
    { id: 5, name: 'ショルダーバッグ' },
    { id: 6, name: 'スニーカー' },
    { id: 7, name: 'パンプス' },
    { id: 8, name: 'ブーツ' },
    { id: 9, name: 'サンダル' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :users
end
