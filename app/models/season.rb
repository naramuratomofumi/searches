class Season < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '1月~2月(気温8℃未満)' },
    { id: 3, name: '3月(気温12℃未満)' },
    { id: 4, name: '4月(気温16℃未満)' },
    { id: 5, name: '5月(気温20℃未満)' },
    { id: 6, name: '6月(気温25℃未満)' },
    { id: 7, name: '7月~8月(気温25℃以上)' },
    { id: 8, name: '9月(気温25℃未満)' },
    { id: 9, name: '10月(気温20℃未満)' },
    { id: 10, name: '11月(気温16℃未満)' },
    { id: 11, name: '12月(気温12℃未満)' }
  ]

  include ActiveHash::Associations
  has_many :prototypes
end
