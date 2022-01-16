class TopsCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'アウター' },
    { id: 3, name: 'インナー' },
    { id: 4, name: 'ワンピース' }
  ]

  include ActiveHash::Associations
  has_many :prototypes
end
