class Relationship < ApplicationRecord
  belongs_to :follower, class_name: "User"
  # 規約："モデル名_id" -> X Follower_id <-> Follower
  belongs_to :followed, class_name: "User"
  # 規約："モデル名_id" -> X Followed_id <-> Followed
  validates :follower_id, presence: true
  validates :followed_id, presence: true
end
