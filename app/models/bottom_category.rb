class BottomCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: 'フルレングス' },
    { id: 2, name: 'ショートパンツ' },
    { id: 3, name: 'ロングスカート(膝より下)' },
    { id: 4, name: 'ショートスカート' },
    { id: 5, name: 'ミニスカート' }
  ]

  include ActiveHash::Associations
  has_many :prototypes
end
