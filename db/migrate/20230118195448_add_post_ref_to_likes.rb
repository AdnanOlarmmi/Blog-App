class AddPostRefToLikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :post_id, null: false, foreign_key: {'to_table': 'posts'}
  end
end
