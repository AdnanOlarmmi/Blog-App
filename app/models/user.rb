class User < ApplicationRecord
  has_many :posts, foreign_key: 'author_id', class_name: 'Post'
  has_many :comments, foreign_key: 'author_id', class_name: 'Comment'
  has_many :likes, foreign_key: 'author_id', class_name: 'Like'

  def query_posts
    Post.where(author_id: id).order(created_at: :desc).limit(3)
  end

  validations :name, presence: true
  validations :postscounter, numericality { only_integer: true}, allow_nil: false
end
