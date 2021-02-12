require_relative '20210212085126_create_comments'

class AddColumnToComment < ActiveRecord::Migration[6.1]

  def change
    add_column :comments, :user_id, :integer
    add_column :comments, :post_id, :integer
    add_index :comments, :user_id
    add_index :comments, :post_id
  end

end
