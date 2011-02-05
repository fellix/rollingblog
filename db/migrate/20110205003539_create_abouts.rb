class CreateAbouts < ActiveRecord::Migration
  def self.up
    create_table :abouts do |t|
      t.references :user, :null => false
      t.text :body, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :abouts
  end
end
