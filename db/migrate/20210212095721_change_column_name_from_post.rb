require_relative '20210212085028_create_posts'

class ChangeColumnNameFromPost < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :author_id, :user_id
    add_index :posts, :user_id
  end
end
