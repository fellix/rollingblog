class AddNameToUser < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.string :name, :limit => 200
    end
  end

  def self.down
    change_table :users do |t|
      t.remove :name
    end
  end
end
