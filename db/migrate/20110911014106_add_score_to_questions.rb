class AddScoreToQuestions < ActiveRecord::Migration
  def self.up
    add_column :questions, :score, :integer, :null => false
  end

  def self.down
    remove_column :questions, :score
  end
end
