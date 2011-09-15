class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.datetime :published_at
      t.string :title
      t.references :account
      t.string :file_file_name
      t.string :file_content_type
      t.integer :file_file_size
      t.datetime :file_updated_at
      t.timestamps
    end
    add_index :posts, :account_id
  end
end
