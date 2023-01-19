class AddPostRefToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :post_id, null: false, foreign_key: {to_table: 'comments'}
  end
end
