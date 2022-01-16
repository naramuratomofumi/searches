class BottomCategory < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'フルレングス' },
    { id: 3, name: 'ショートパンツ' },
    { id: 4, name: 'ロングスカート(膝より下)' },
    { id: 5, name: 'ショートスカート' },
    { id: 6, name: 'ミニスカート' }
  ]

  include ActiveHash::Associations
  has_many :prototypes
end
