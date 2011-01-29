class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.references :user, :null => false
      t.string :title, :limit => 200, :null => false
      t.text :body, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
