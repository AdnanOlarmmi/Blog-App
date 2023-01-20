class User < ApplicationRecord
  has_many :posts, foreign_key: 'author_id', class_name: 'Post'
  has_many :comments, foreign_key: 'author_id', class_name: 'Comment'
  has_many :likes, foreign_key: 'author_id', class_name: 'Like'

  def query_posts
    Post.order(created_at: :desc).limit(3)
  end

  validates :name, presence: true
  validates :postscounter, numericality: { only_integer: true }, allow_nil: true
end
