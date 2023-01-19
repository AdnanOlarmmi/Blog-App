class User < ApplicationRecord
    has_many :posts, foreign_key: 'author_id', class_name: 'Post'
    has_many :comments, foreign_key: 'author_id', class_name: 'Comment'
    has_many :likes, foreign_key: 'author_id', class_name: 'Like'

    def query_posts
        posts = Post.where(author_id: self.id).order(created_at: :desc).limit(5)
        return posts
    end      
end