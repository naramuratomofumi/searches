class Like < ApplicationRecord
  belongs_to :user
  belongs_to :prototype
  validates_uniqueness :prototype_id, scope: :user_id  # validates_uniqueness_ofによって、post_idとuser_idの組が1組しかないようにバリデーションをかけた。 #
end
