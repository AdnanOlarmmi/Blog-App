class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.datetime :createdat
      t.timestamp :updatedat

      t.timestamps
    end
  end
end
