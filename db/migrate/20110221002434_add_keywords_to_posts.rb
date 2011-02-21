class AddKeywordsToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.string :keywords, :limit => 200
    end
  end

  def self.down
    change_table :posts do |t|
      t.remove :keywords
    end
  end
end
