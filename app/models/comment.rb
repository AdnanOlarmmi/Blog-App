class Comment < ApplicationRecord
  belongs_to :author, foreign_key: 'author_id', class_name: 'User'
  belongs_to :post, foreign_key: 'post_id', class_name: 'Post'

  def update_comment_counts
    post = Post.find(post_id)
    post.comment_count = Comment.where(post_id: post.id).count
    post.save
  end
end
