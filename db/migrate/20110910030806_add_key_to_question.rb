class AddKeyToQuestion < ActiveRecord::Migration
  def self.up
    add_column :questions, :key, :string
  end

  def self.down
    remove_column :questions, :key
  end
end
