class TopsCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: 'アウター' },
    { id: 2, name: 'インナー' },
    { id: 3, name: 'ワンピース' }
  ]

  include ActiveHash::Associations
  has_many :prototypes
end
