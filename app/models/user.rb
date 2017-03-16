class User < ApplicationRecord
  validates :name, presence: true,
            length: { minimum: 3, maximum: 20},
            uniqueness: true
  has_many :followers, :foreign_key => 'follower_id', :class_name => 'follow'
  has_many :followed, :foreign_key => 'followed_id', :class_name => 'follow'

end
