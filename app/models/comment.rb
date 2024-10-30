class Comment < ApplicationRecord
  belongs_to :gossip
  belongs_to :user
  has_many :likes
  validates :content, presence: true
end
