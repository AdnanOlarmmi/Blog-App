class Post < ApplicationRecord
  belongs_to :author, foreign_key: 'author_id', class_name: 'User'
  has_many :comments, foreign_key: 'post_id', class_name: 'Comment'
  has_many :likes, foreign_key: 'post_id', class_name: 'Like'

  def query_comments
    Comment.where(post_id: id).order(created_at: :desc).limit(5)
  end

  def update_post_counts
    author = User.find(author_id)
    author.post_count = Post.where(author_id: author.id).count
    author.save
  end
end
