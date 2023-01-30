class Like < ApplicationRecord
  belongs_to :author, foreign_key: 'author_id', class_name: 'User'
  belongs_to :post, foreign_key: 'post_id', class_name: 'Post'

  after_save :update_like_counts

  private

  def update_like_counts
    post = Post.find(post_id)
    post.likescounter = Like.where(post_id: post.id).count
    post.save
  end
end
