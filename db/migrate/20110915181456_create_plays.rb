class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.references :post
      t.references :account
      t.string :ip
      t.string :referrer

      t.timestamps
    end
    add_index :plays, :post_id
  end
end
