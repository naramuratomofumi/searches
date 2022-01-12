class AccCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'キャップ' },
    { id: 3, name: 'ハット' },
    { id: 4, name: 'ハンドバック' },
    { id: 5, name: 'バックパック' },
    { id: 6, name: 'ショルダーバッグ' },
    { id: 7, name: 'スニーカー' },
    { id: 8, name: 'パンプス' },
    { id: 9, name: 'ブーツ' },
    { id: 10, name: 'サンダル' },
    { id: 11, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :users
end
