class AddUserIdToAnswers < ActiveRecord::Migration
  def self.up
    add_column :answers, :user_id, :integer, :null => false
  end

  def self.down
    remove_column :answers, :user_id
  end
end
